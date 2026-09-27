#!/usr/bin/env python3
"""Assemble les chapitres Markdown de kb/guide/ en un PDF (HTML → Chromium).

Usage : python3 kb/tools/build_pdf.py [sortie.pdf]
Dépendances : markdown, playwright (Chromium de /opt/pw-browsers).
"""
import glob
import html
import os
import re
import sys

import markdown
from playwright.sync_api import sync_playwright

ROOT = os.path.dirname(os.path.dirname(os.path.dirname(os.path.abspath(__file__))))
GUIDE = os.path.join(ROOT, "kb", "guide")
OUT = sys.argv[1] if len(sys.argv) > 1 else os.path.join(ROOT, "DBD_Guide_Expert_v2.pdf")

CSS = r"""
@page { size: A4; margin: 18mm 16mm 20mm 16mm; }
:root { --ink:#1b1b1f; --muted:#5b5b66; --accent:#9b1c1c; --line:#d9d9e0; --soft:#f5f5f8; }
html { font-family: "DejaVu Sans", "Liberation Sans", Arial, sans-serif; font-size: 9.6pt; color: var(--ink); line-height: 1.45; }
body { margin: 0; }
h1 { font-size: 20pt; color: var(--accent); border-bottom: 2px solid var(--accent); padding-bottom: 4px; margin: 0 0 10px; page-break-before: always; }
h1.first { page-break-before: avoid; }
h2 { font-size: 13.5pt; margin: 18px 0 6px; color: #2a2a33; border-bottom: 1px solid var(--line); padding-bottom: 2px; }
h3 { font-size: 11pt; margin: 14px 0 4px; }
h4 { font-size: 10pt; margin: 10px 0 3px; color: #33333d; }
h2, h3, h4 { page-break-after: avoid; }
p { margin: 4px 0 6px; }
ul, ol { margin: 3px 0 6px 18px; padding: 0; }
li { margin: 1px 0; }
table { border-collapse: collapse; width: 100%; margin: 6px 0 10px; font-size: 8.4pt; page-break-inside: auto; }
tr { page-break-inside: avoid; }
th { background: #ececf2; text-align: left; }
th, td { border: 1px solid var(--line); padding: 3px 5px; vertical-align: top; }
code { font-family: "DejaVu Sans Mono", monospace; font-size: 8.4pt; background: var(--soft); padding: 0 2px; }
pre { background: var(--soft); border: 1px solid var(--line); padding: 6px 8px; font-size: 7.8pt; line-height: 1.25; white-space: pre-wrap; page-break-inside: avoid; }
pre code { background: none; padding: 0; }
blockquote { margin: 6px 0; padding: 4px 10px; border-left: 3px solid var(--accent); background: #fbf4f4; color: #333; }
hr { border: 0; border-top: 1px solid var(--line); margin: 10px 0; }
.cover { height: 250mm; display: flex; flex-direction: column; justify-content: center; }
.cover h1 { border: 0; font-size: 34pt; page-break-before: avoid; margin-bottom: 4px; }
.cover .sub { font-size: 14pt; color: var(--muted); }
.cover .meta { margin-top: 30px; font-size: 10pt; }
.toc { page-break-before: always; }
.toc h1 { page-break-before: avoid; }
.toc ul { list-style: none; margin-left: 0; }
.toc li.l1 { font-weight: bold; margin-top: 5px; }
.toc li.l2 { margin-left: 14px; font-size: 8.8pt; }
.toc a { color: var(--ink); text-decoration: none; }
a { color: #1f4e9b; text-decoration: none; }
"""


def slug(text, seen):
    s = re.sub(r"[^\w\- ]", "", text, flags=re.U).strip().lower().replace(" ", "-")[:60] or "s"
    base, i = s, 2
    while s in seen:
        s = f"{base}-{i}"
        i += 1
    seen.add(s)
    return s


def main():
    files = sorted(glob.glob(os.path.join(GUIDE, "[0-9][0-9]_*.md")))
    if not files:
        sys.exit("Aucun chapitre dans kb/guide/")
    md = markdown.Markdown(extensions=["tables", "fenced_code", "sane_lists", "attr_list", "md_in_html"])
    parts, toc, seen = [], [], set()
    cover = ""
    for f in files:
        text = open(f, encoding="utf-8").read()
        if os.path.basename(f).startswith("00_cover"):
            cover = md.reset().convert(text)
            continue
        body = md.reset().convert(text)

        def add_id(m):
            level, attrs, inner = m.group(1), m.group(2) or "", m.group(3)
            plain = html.unescape(re.sub(r"<[^>]+>", "", inner))
            if 'id="' in attrs:
                hid = re.search(r'id="([^"]+)"', attrs).group(1)
            else:
                hid = slug(plain, seen)
                attrs += f' id="{hid}"'
            if level in ("1", "2"):
                toc.append((int(level), plain, hid))
            return f"<h{level}{attrs}>{inner}</h{level}>"

        body = re.sub(r"<h([1-4])([^>]*)>(.*?)</h\1>", add_id, body, flags=re.S)
        parts.append(body)
    toc_html = ['<div class="toc"><h1>Table des matières</h1><ul>']
    for level, title, hid in toc:
        toc_html.append(f'<li class="l{level}"><a href="#{hid}">{html.escape(title)}</a></li>')
    toc_html.append("</ul></div>")
    doc = (f"<!doctype html><html lang='fr'><head><meta charset='utf-8'><title>Dead by Daylight — Guide expert</title>"
           f"<style>{CSS}</style></head><body><div class='cover'>{cover}</div>{''.join(toc_html)}{''.join(parts)}</body></html>")
    html_path = os.path.splitext(OUT)[0] + ".html"
    open(html_path, "w", encoding="utf-8").write(doc)
    with sync_playwright() as p:
        b = p.chromium.launch()
        pg = b.new_page()
        pg.goto("file://" + html_path, wait_until="load")
        pg.pdf(path=OUT, format="A4", print_background=True, display_header_footer=True,
               header_template="<div></div>",
               footer_template="<div style='font-size:7pt;width:100%;text-align:center;color:#777'>"
                               "Dead by Daylight — Guide expert · LIVE 10.1.2a · page <span class='pageNumber'></span>"
                               " / <span class='totalPages'></span></div>",
               margin={"top": "16mm", "bottom": "18mm", "left": "15mm", "right": "15mm"})
        b.close()
    print(OUT)


if __name__ == "__main__":
    main()
