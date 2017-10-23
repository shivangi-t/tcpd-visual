gujwin <- subset(guj, Position=='1')
idcount <- count(guj, "mapped_ID")
colnames(idcount)[2] <- "Times_contested"
wincount <- count(gujwin, "mapped_ID")
colnames(wincount)[2] <- "Times_won"
win2012 <- subset(gujwin, Year=='2012')
newguj <- merge(win2012, idcount, by.x = "mapped_ID", "mapped_ID")
newguj <- merge(newguj, wincount, by.x = "mapped_ID", "mapped_ID")