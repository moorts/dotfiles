config.load_autoconfig(False)

# Booleans
c.url.open_base_url = True

c.url.searchengines["DEFAULT"] = "https://google.com/search?q={}"
c.url.searchengines["srx"] = "https://searx.tiekoetter.com/search?q={}"
c.url.searchengines["pre"] = "https://presearch.com/search?q={}"
c.url.searchengines["grb"] = "https://gruble.de/search?q={}"

config.source("gruvbox.py")
config.source("qutenyan/nyan.py")

