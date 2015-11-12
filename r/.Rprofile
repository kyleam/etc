suppressMessages(require(ggplot2))
suppressMessages(require(plyr))
suppressMessages(require(data.table))
suppressMessages(require(RColorBrewer))

r <- getOption("repos")
r["CRAN"] <- "http://cran.us.r-project.org"
options(repos = r)
rm(r)

ht <- function(d) rbind(head(d,10),tail(d,10))
hh <- function(d) d[1:5,1:5]

## ggplot2 theme
mytheme <- theme_bw() +
  theme(panel.grid.major=element_blank(), panel.grid.minor=element_blank()) +
  theme(strip.background = element_rect(fill = NA))
theme_set(mytheme)
