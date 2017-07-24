#adapted from https://gist.github.com/mollietaylor/3671518
library(wordcloud)
library(RColorBrewer)

conventions <- read.table("/Users/darwin/documents/onedrive/2016 CLDDATA CP230/week05/conventions/conventions.csv",
                          header = TRUE,
                          sep = ",")
                          
setwd('/Users/darwin/documents/onedrive/2016 CLDDATA CP230/week05/conventions/output')                          
                          

png("dnc.png")
wordcloud(conventions$wordper25k, # words
          conventions$democrats, # frequencies
          scale = c(4,1), # size of largest and smallest words
          colors = brewer.pal(9,"Blues"), # number of colors, palette
          rot.per = 0) # proportion of words to rotate 90 degrees
dev.off()

png("rnc.png")
wordcloud(conventions$wordper25k,
          conventions$republicans,
          scale = c(4,1),
          colors = brewer.pal(9,"Reds"),
          rot.per = 0)
dev.off()