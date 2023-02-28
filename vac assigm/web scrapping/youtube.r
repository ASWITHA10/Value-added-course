library(robotstxt)
library(dplyr)
library(rvest)
url <- "https://www.tastyedits.com/top-subscribed-youtube-channels/"
path = paths_allowed(url)
#html from website
web = read_html(url)
View(web)

rank <- web %>% html_nodes(".number:nth-child(1)")%>% html_text()
View(rank)

channel <- web %>%html_nodes(".text:nth-child(2)") %>% html_text()
View(channel)

subs <- web%>%html_nodes(".text+ .number") %>% html_text()
View(subs)

#creating dataframe
youtube <- data.frame(rank,channel,subs)
View(youtube)
#save
write.csv(youtube,"youtube.csv")

in
