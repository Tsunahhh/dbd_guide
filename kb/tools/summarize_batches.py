#!/usr/bin/env python3
"""Résumé automatique des fichiers de lots (kb/research/batch*.md).

Produit sur la sortie standard un tableau Markdown par lot :
- nombre d'entrées (perks / tueurs),
- verdicts d'écart avec le seed (OK / FAUX / IMPRÉCIS / NON VÉRIFIABLE / PTB-comme-LIVE),
- occurrences des niveaux de confiance,
- nombre de conflits et de sources.
Et écrit kb/ledgers/SOURCE_LEDGER_batches.md (sources dédoublonnées par URL).

Usage : python3 kb/tools/summarize_batches.py > /tmp/summary.md
"""
import glob
import os
import re
from collections import Counter, OrderedDict

ROOT = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
FILES = sorted(glob.glob(os.path.join(ROOT, "research", "batch*.md")))
CONF = ["VERIFIED_PRIMARY", "VERIFIED_MULTI_SOURCE", "STRONG_SECONDARY",
        "EXPERT_OPINION", "COMMUNITY_OBSERVATION", "UNCERTAIN", "OUTDATED"]
VERDICTS = ["OK", "FAUX", "IMPRÉCIS", "NON VÉRIFIABLE", "PTB-comme-LIVE"]


def entries(text, name):
    if "killers" in name:
        return re.findall(r"^## \d+\.\s+(.+)$", text, re.M)
    return [e for e in re.findall(r"^### (.+)$", text, re.M)
            if not e.startswith(("CONFLICT", "Règle", "Regle"))]


def section(text, title):
    m = re.search(r"^## " + re.escape(title) + r".*?$(.*?)(?=^## |\Z)", text, re.M | re.S)
    return m.group(1) if m else ""


def main():
    urls = OrderedDict()
    print("| Fichier | Entrées | OK | FAUX | IMPRÉCIS | NON VÉRIF. | PTB→LIVE | VERIFIED_* | STRONG_SEC. | UNCERTAIN | Conflits | Sources |")
    print("|---|---:|---:|---:|---:|---:|---:|---:|---:|---:|---:|---:|")
    tot = Counter()
    for f in FILES:
        name = os.path.basename(f)
        t = open(f, encoding="utf-8").read()
        ent = entries(t, name)
        verd = Counter()
        for line in re.findall(r"\*\*Écart avec le seed\*\*\s*:\s*(.+)", t):
            for v in VERDICTS:
                if line.strip().upper().startswith(v.upper()):
                    verd[v] += 1
                    break
        conf = Counter({c: t.count(c) for c in CONF})
        conflicts = len(re.findall(r"^#### CONFLICT", t, re.M))
        src = section(t, "Sources")
        for m in re.finditer(r"(https?://[^\s)\]>|]+)", src):
            u = m.group(1).rstrip(".,;")
            line = src[max(0, src.rfind("\n", 0, m.start())):src.find("\n", m.end())].strip()
            urls.setdefault(u, (line, set()))[1].add(name)
        nsrc = len(re.findall(r"https?://", src))
        row = [name, len(ent), verd["OK"], verd["FAUX"], verd["IMPRÉCIS"], verd["NON VÉRIFIABLE"],
               verd["PTB-comme-LIVE"], conf["VERIFIED_PRIMARY"] + conf["VERIFIED_MULTI_SOURCE"],
               conf["STRONG_SECONDARY"], conf["UNCERTAIN"], conflicts, nsrc]
        for k, v in zip(["ent", "ok", "faux", "impr", "nv", "ptb", "ver", "ss", "unc", "conf", "src"], row[1:]):
            tot[k] += v
        print("| " + " | ".join(str(x) for x in row) + " |")
    print("| **Total** | " + " | ".join(str(tot[k]) for k in
          ["ent", "ok", "faux", "impr", "nv", "ptb", "ver", "ss", "unc", "conf", "src"]) + " |")
    out = os.path.join(ROOT, "ledgers", "SOURCE_LEDGER_batches.md")
    with open(out, "w", encoding="utf-8") as fh:
        fh.write("# SOURCE_LEDGER — sources des lots 2-4 (généré)\n\n")
        fh.write("Généré par `kb/tools/summarize_batches.py`. Toutes consultées le 27/09/2026 **via le résumé de WebSearch** "
                 "(page non lue en entier) : confiance plafonnée à STRONG_SECONDARY.\n\n")
        fh.write(f"{len(urls)} URL distinctes.\n\n| # | URL | Fichiers | Ligne d'origine |\n|---:|---|---|---|\n")
        for i, (u, (line, names)) in enumerate(urls.items(), 1):
            line = line.replace("|", "/")[:160]
            fh.write(f"| {i} | {u} | {', '.join(sorted(n.replace('.md', '') for n in names))} | {line} |\n")


if __name__ == "__main__":
    main()
