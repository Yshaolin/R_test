url <- "https://torrentfreak.com/top-10-most-pirated-movies-of-the-week-130304/"
web <- read_html(url)
num <- web %>% html_nodes("td strong") %>% html_text()
IMD <- web %>% html_nodes("td:nth-child(4)") %>% html_text()
web_urls <- web %>% html_nodes("td:nth-child(4) a:nth-child(1)") %>% html_text()
html_nodes(<a title="yh" href="http://www.yahoo.com">Yahoo</a>,"a[title="yh"")
web %>% html_nodes(xpath="//tbody/tr/td/a[contains(@href,'imdb')]")
web %>% html_nodes(xpath="//tbody/tr/td/a[contains(@*,'http') and contains(@*,'imdb')]")
