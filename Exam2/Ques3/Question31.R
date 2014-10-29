library(knitr)
library(ggplot2)
library(devtools)
UrlAddress3 <- paste0("https://raw.githubusercontent.com/jrwolf/IT497/master/fitstats.csv")
# Download Electoral disproportionality data
DataUrl3 <- RCurl::getURL(UrlAddress3)
# Convert Data into a data frame
Ques3 <- read.table(textConnection(DataUrl3),
                    sep = ",",
                    header = TRUE)
# Show variables in data
names(Ques3)

ggplot(Ques3, aes(x=Steps, y=Miles)) +
  geom_point(shape=1) + ggtitle("Steps to Miles Scatter Graph")
