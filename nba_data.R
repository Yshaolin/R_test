library(rvest)
library(xml2)

url<-"http://nba.sports.sina.com.cn/playerstats.php?s=0&e=49&key=1&t=1"
web <- read_html(url, encoding="gbk")
nodes <- web %>% html_nodes("table")
tab <- html_table(nodes[[2]])
tabs <- data.frame(lapply(tab,iconv,"utf-8","gbk"))
print(tabs)
