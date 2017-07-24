#adapted from https://gist.github.com/mollietaylor/3671518
library(wordcloud)
library(RColorBrewer)
library(png)

conventions <- maml.mapInputPort(1) # class: data.frame

png("cloud.png")
wordcloud(conventions$wordper25k, # words
	conventions$democrats, # frequencies
	scale = c(4,1), # size of largest and smallest words
	colors = brewer.pal(9,"Blues"), # number of colors, palette
	rot.per = 0) # proportion of words to rotate 90 degrees
dev.off()

wordcloud(conventions$wordper25k,
	conventions$republicans,
	scale = c(4,1),
	colors = brewer.pal(9,"Reds"),
	rot.per = 0)
dev.off()

wcloud<-readPNG("cloud.png")
grid::grid.raster(wcloud)

maml.mapOutputPort("conventions")