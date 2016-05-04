
allfileNames <- list.files("Trends")

AllFOIs = NULL

for (FileName in allfileNames) {

  FullFileName <- paste0("Trends/", FileName)
  
  trendsData <- read.csv(FullFileName, skip=4, nrow=476-5)
  trendsData$Year <- substring(trendsData$Week, first=1, last=4)
  trendsData$Year <- as.numeric(trendsData$Year)
  trendsData2012 <- subset(trendsData, Year == 2012)
  foi <- sum(trendsData2012$X2013) / sum(trendsData2012$X2011)
  country <- substring(FileName, 1,2)
  
  foiROW <- data.frame(Country=country, FOI=foi)
  AllFOIs <- rbind(AllFOIs, foiROW)
  order((AllFOIs, TRUE))
}