
#install.packages(c("httr", "jsonlite"))

library(httr)
library(jsonlite)

version

res = GET("http://api.open-notify.org/astros.json")

res

rawToChar(res$content)

data = fromJSON(rawToChar(res$content))

names(data)

data$people

class(data)
str(data)