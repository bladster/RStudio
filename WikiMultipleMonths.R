allURLs <- NULL
for (year in (2008:2014)) {

  for (month in (1:12)) {
    
    if ((year == 2014) && (month > 10)) {
      next
    }
    
    theURL <- "http://stats.grok.se/json/en/"
    theURL <- paste0(theURL,year)
    
    if (month < 10) {
      theURL <- paste0(theURL,"0")
      }
    theURL <- paste0(theURL,month)
    theURL <- paste0(theURL,"/Friday")
  allURLs <- c(allURLs, theURL)
    
  }
}

