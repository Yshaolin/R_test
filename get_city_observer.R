url <- "http://www.aepb.gov.cn/Pages/Aepb14_SJZX.aspx"
anhui <-
  url %>% read_html() %>% html_nodes("table") %>% .[[1]] %>% html_table()
city <- anhui[1]
city <- iconv(city[,1],from = "utf-8","gbk")
a <-
  url %>% read_html() %>% html_nodes("table tbody a") %>% html_attrs()
a <- as.character(a)
b <- paste("http://www.aepb.gov.cn/Pages/",a,sep = "")
myfun <-
  function(x)
    b[x] %>% read_html() %>% html_nodes("table") %>% .[[1]] %>% html_table(fill = T) %>% nrow()
site <- sapply(1:length(b),myfun)
data <- data.frame("城市" = city,"监测站数量" = site)

print(data)


city <- data.frame(lapply(anhui, iconv,"utf-8","gbk"))
city
names(city)
names(city) <- iconv(names(city),"utf-8","gbk")
city



