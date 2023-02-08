config.load_autoconfig(False)

# Booleans
c.url.open_base_url = True

css = '/home/moorts/.config/qutebrowser/gruvbox-all-sites.css'
config.bind(',n', f'config-cycle content.user_stylesheets {css} ""')

c.url.searchengines["DEFAULT"] = "https://google.com/search?q={}"
c.url.searchengines["srx"] = "https://searx.tiekoetter.com/search?q={}"
c.url.searchengines["pre"] = "https://presearch.com/search?q={}"
c.url.searchengines["grb"] = "https://gruble.de/search?q={}"

c.editor.command = ["emacsclient", "-c", "-a ''", "{file}"]

c.content.javascript.clipboard = "access-paste"

c.aliases = {
    "zotero": "spawn --userscript qute-zotero",
    "Zotero": "hint links userscript qute-zotero"
}

config.source("gruvbox.py")
config.source("qutenyan/nyan.py")

