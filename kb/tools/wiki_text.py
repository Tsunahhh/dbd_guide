import json,sys,urllib.request,urllib.parse,re
from bs4 import BeautifulSoup
def parse(page, prop="text"):
    u="https://deadbydaylight.wiki.gg/api.php?"+urllib.parse.urlencode({"action":"parse","page":page,"prop":prop,"format":"json","redirects":1})
    req=urllib.request.Request(u,headers={"User-Agent":"dbd-kb-research/1.0 (personal study)"})
    d=json.load(urllib.request.urlopen(req,timeout=30))
    if "error" in d: return None
    return d["parse"]["text"]["*"] if prop=="text" else d["parse"]["wikitext"]["*"]
def text(page):
    h=parse(page)
    if h is None: return None
    s=BeautifulSoup(h,"lxml")
    for t in s.select("style,script,.navbox,.mw-editsection"): t.decompose()
    return re.sub(r"\n{3,}","\n\n",s.get_text("\n")).strip()
if __name__=="__main__":
    print(text(sys.argv[1])[:int(sys.argv[2]) if len(sys.argv)>2 else 4000])
