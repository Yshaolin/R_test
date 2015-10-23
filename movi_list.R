library(RCurl)
library(XML)
url <- "http://movie.douban.com/top250?format=text&qq-pf-to=pcqq.temporaryc2c"
web <- getURL(url, .encoding="utf-8")
tree <- htmlParse(web, encoding="utf-8")
nodes <- getNodeSet(tree, "//p[@class='']")
contents <- sapply(nodes, xmlValue)
conts <- gsub("\\n *| *\\n", "", contents)
