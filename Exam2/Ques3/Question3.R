library(knitr)
library(ggplot2)
library(devtools)
UrlAddress3 <- paste0("https://raw.githubusercontent.com/jrwolf/IT497/master/fitstats.csv")

DataUrl3 <- RCurl::getURL(UrlAddress3)

Ques3 <- read.table(textConnection(DataUrl3),
                      sep = ",",
                      header = TRUE)
# Show variables in data
names(Ques3)

ggplot(Ques3, aes(x=Miles, y=Steps)) +
  geom_point(shape=1) + ggtitle("Miles to Steps Scatter Graph")


