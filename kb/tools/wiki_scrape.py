#!/usr/bin/env python3
"""Extraction de pages deadbydaylight.wiki.gg via l'API MediaWiki (action=parse).

Pour chaque page : description courante (avec drapeau « upcoming Patch X »),
onglets d'historique (libellé de version + description), change log.
La description LIVE est déduite : si la description courante est annoncée pour
un patch à venir, on prend le premier onglet d'historique qui n'est ni ce patch
ni un PTB.

Usage : python3 kb/tools/wiki_scrape.py perks|killers|<Titre>… > sortie.json
"""
import json, re, sys, time, urllib.parse, urllib.request
from bs4 import BeautifulSoup

API = "https://deadbydaylight.wiki.gg/api.php"
UA = {"User-Agent": "dbd-kb-research/1.0 (personal study; low rate)"}
UPCOMING = "10.2.0"   # dernier patch annoncé non LIVE au 27/09/2026


def api(**params):
    params["format"] = "json"
    url = API + "?" + urllib.parse.urlencode(params)
    for attempt in range(4):
        try:
            return json.load(urllib.request.urlopen(urllib.request.Request(url, headers=UA), timeout=40))
        except Exception:
            time.sleep(2 ** attempt)
    return {}


def category(cat):
    out, cont = [], {}
    while True:
        d = api(action="query", list="categorymembers", cmtitle="Category:" + cat, cmlimit=500, **cont)
        out += [m["title"] for m in d.get("query", {}).get("categorymembers", []) if m["ns"] == 0]
        if "continue" not in d:
            return out
        cont = {"cmcontinue": d["continue"]["cmcontinue"]}


def clean(node):
    t = node.get_text(" ", strip=True)
    t = re.sub(r"\s+", " ", t).replace(" %", " %").replace(" .", ".").replace(" ,", ",")
    return t.strip()


def scrape(title):
    d = api(action="parse", page=title, prop="text", redirects=1)
    if "parse" not in d:
        return {"title": title, "error": "missing"}
    s = BeautifulSoup(d["parse"]["text"]["*"], "lxml")
    for t in s.select("style,script,.mw-editsection"):
        t.decompose()
    res = {"title": d["parse"]["title"]}
    first = s.find("p")
    res["intro"] = clean(first) if first else ""
    # description courante : 1re cellule « Description » hors de l'historique
    hist_h = s.find(id="History")
    hist_tabber = hist_h.find_next("div", class_="tabber") if hist_h else None
    cur = None
    for hdr in s.select("div.divTableHeader, th"):
        if hdr.get_text(strip=True) == "Description" and not (hist_tabber and hist_tabber in hdr.parents):
            cell = hdr.find_next_sibling() or hdr.find_next("div", class_="divTableCell")
            cur = cell
            break
    if cur is None:  # tables classiques
        cur = s.find("td", class_="perkDesc") or s.find("div", class_="perkDesc")
    res["current"] = clean(cur) if cur else ""
    notice = s.find(string=re.compile(r"upcoming Patch"))
    res["current_flag"] = re.sub(r"\s+", " ", notice.strip()) if notice else ""
    res["history"] = []
    if hist_tabber:
        labels = [a.get_text(strip=True) for a in hist_tabber.select("a.tabber__tab")]
        panels = hist_tabber.select("article.tabber__panel")
        for lab, pan in zip(labels, panels):
            cells = [c for c in pan.select("div.divTableCell.textCell")]
            res["history"].append({"version": lab, "desc": clean(cells[0]) if cells else clean(pan)})
    cl = s.find(id="Change_Log")
    if cl:
        parts, node = [], cl.find_parent(["h2"]).find_next_sibling()
        while node is not None and node.name != "h2":
            parts.append(clean(node))
            node = node.find_next_sibling()
        res["changelog"] = " | ".join(p for p in parts if p)
    # description LIVE
    live, live_src = res["current"], "current"
    if UPCOMING in res["current_flag"] or re.search(r"upcoming", res["current_flag"]):
        for h in res["history"]:
            v = h["version"]
            if v.startswith(UPCOMING) or "PTB" in v:
                continue
            live, live_src = h["desc"], "history:" + v
            break
        else:
            live, live_src = "", "no-live-version-found"
    res["live"], res["live_src"] = live, live_src
    return res


if __name__ == "__main__":
    args = sys.argv[1:]
    titles = category("Perks") if args == ["perks"] else category("Killers") if args == ["killers"] else args
    out = []
    for i, t in enumerate(titles):
        out.append(scrape(t))
        time.sleep(0.4)
        if i % 25 == 0:
            print(f"{i}/{len(titles)} {t}", file=sys.stderr)
    json.dump(out, sys.stdout, ensure_ascii=False, indent=1)
