library(lattice)
library(gtrendsR)
library(tidyverse)
library(dplyr)
library(ggplot2)
setwd("C:/Users/JackSato/OneDrive - Lowy Institute for International Policy/Documents/Rstudio")
## ABC
word=c("/m/013fn") ##Australian Broadcasting Corporation [tag:]
time="2013-01-01 2021-12-31" ## four years either side of January 2017
## Google trends results for the Australian Broadcasting Corporation for 2017-2021 (API relevant years). Using R
geo1="BN" ##Brunei
trends1=gtrends(word,geo1,time,hl="en-AU")
interest1=trends1$interest_over_time
df1=as_tibble(data.frame(interest1$date,interest1$hits))
geo2="KH" ##Cambodia
trends2=gtrends(word,geo2,time,hl="en-AU")
interest2=trends2$interest_over_time
df2=as_tibble(data.frame(interest2$date,interest2$hits))
geo3="ID" ##Indonesia
trends3=gtrends(word,geo3,time,hl="en-AU")
interest3=trends3$interest_over_time
df3=as_tibble(data.frame(interest3$date,interest3$hits))
geo4="MY" ##Malaysia
trends4=gtrends(word,geo4,time,hl="en-AU")
interest4=trends4$interest_over_time
df4=as_tibble(data.frame(interest4$date,interest4$hits))
geo5="LA" ##Laos
trends5=gtrends(word,geo5,time,hl="en-AU")
interest5=trends5$interest_over_time
df5=as_tibble(data.frame(interest5$date,interest5$hits))
geo6="MM" ##Myanmar
trends6=gtrends(word,geo6,time,hl="en-AU")
interest6=trends6$interest_over_time
df6=as_tibble(data.frame(interest6$date,interest6$hits))
geo7="PH" ##Philippines
trends7=gtrends(word,geo7,time,hl="en-AU")
interest7=trends7$interest_over_time
df7=as_tibble(data.frame(interest7$date,interest7$hits))
geo8="SG" ##Singapore
trends8=gtrends(word,geo8,time,hl="en-AU")
interest8=trends8$interest_over_time
df8=as_tibble(data.frame(interest8$date,interest8$hits))
geo9="TH" ##Thailand
trends9=gtrends(word,geo9,time,hl="en-AU")
interest9=trends9$interest_over_time
df9=as_tibble(data.frame(interest9$date,interest9$hits))
geo10="VN" ##Vietnam
trends10=gtrends(word,geo10,time,hl="en-AU")
interest10=trends10$interest_over_time
df10=as_tibble(data.frame(interest10$date,interest10$hits))

ggplot() + 
  geom_smooth(aes(x = df1$interest1.date,y = df1$interest1.hits,color = "Brunei")) +
  geom_smooth(aes(x = df2$interest2.date,y = df2$interest2.hits,color = "Cambodia")) +
  geom_smooth(aes(x = df3$interest3.date,y = df3$interest3.hits,color = "Indonesia")) +
  geom_smooth(aes(x = df4$interest4.date,y = df4$interest4.hits,color = "Laos")) +
  geom_smooth(aes(x = df5$interest5.date,y = df5$interest5.hits,color = "Malaysia")) +
  geom_smooth(aes(x = df6$interest6.date,y = df6$interest6.hits,color = "Myanmar")) +
  geom_smooth(aes(x = df7$interest7.date,y = df7$interest7.hits,color = "Philippines")) +
  geom_smooth(aes(x = df8$interest8.date,y = df8$interest8.hits,color = "Singapore")) +
  geom_smooth(aes(x = df9$interest9.date,y = df9$interest9.hits,color = "Thailand")) +
  geom_smooth(aes(x = df10$interest10.date,y = df10$interest10.hits,color = "Vietnam")) +
  theme_minimal() +
  labs(title = "ABC - 2017-2021 in South East Asia",
       subtitle = "Using Google Trends",
       caption = "Using the gtrendsR Package                                                                                                                    10:00 AEST 09/05/2022", 
       colour="Nations") +
  xlab("Year") + 
  ylab("Interest")
