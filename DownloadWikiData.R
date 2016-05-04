library(RCurl)
library(RJSONIO)

AllViewsData <- NULL

for (theURL in allURLs) {
  
  cat("downloading the url", theURL, "\n")
  theUrl <- "http://stats.grok.se/json/en/201410/Friday"
  
  rawData <- getURL(theURL)
  parsedData <- fromJSON(rawData)
  viewsData <- data.frame(Date=names(parsedData$daily_views), Views= parsedData$daily_views, row.names = NULL)
  
  AllViewsData <- rbind(AllViewsData, viewsData)
}