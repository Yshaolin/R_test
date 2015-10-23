url ="http://data2.7m.cn/history_Matches_Data/2013-2014/92/big/fixture.js"

myheader = c("Accept" ="text/html, application/xhtml+xml, */*",
"Referer" ="http://data2.7m.cn/matches_data/92/big/index.shtml",
"Accept-Language" ="zh-CN",
"User-Agent" = "Mozilla/5.0(Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko)Chrome/31.0.1650.48 Safari/537.36 QQBrowser/7.7.31732.400",
"Accept-Encoding" = "gzip,deflate",
"Connection" ="Keep-Alive"
)

t = basicTextGatherer()
temp = getURL(url,httpHeader=myheader,write=t,verbose=T,.encoding="UTF-8")
temp
