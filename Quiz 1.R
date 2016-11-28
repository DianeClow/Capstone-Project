## Question 1

setwd("~/Documents/Coursera/DataScience/Capstone Project/final/en_US")
install.packages("tm")
library(tm)

## The en_US.blogs.txt file is how many Megabytes?

## 200 (210.2 MB)
## Decompress the zip and look in finder to see the size.  

## Question 2

## The en_US.twitter.txt has how many lines of text?

## Over 2 million (2360148 observations)
twitter <- readLines(con <- file("./final/en_US/en_US.twitter.txt"), 
                     encoding = "UTF-8", skipNul = TRUE)
close(con)
length(twitter)

## Question 3

## What is the length of the longest line seen in any of the three en_US data sets?

## Over 40 thousand in the logs data set (40833)
blogs <- readLines(con <- file("./en_US.blogs.txt"), 
                     encoding = "UTF-8", skipNul = TRUE)
close(con)
news <- readLines(con <- file("./en_US.news.txt"), 
                     encoding = "UTF-8", skipNul = TRUE)
close(con)

fileName="en_US.blogs.txt"
con=file(fileName,open="r")
lineBlogs=readLines(con) 
longBlogs=length(line)
close(con)

fileName="en_US.news.txt"
con=file(fileName,open="r")
lineNews=readLines(con) 
longNews=length(line)
close(con)

require(stringi)
longBlogs<-stri_length(lineBlogs)
max(longBlogs)
longNews<-stri_length(lineNews)
max(longNews)

## Question 4

## In the en_US twitter data set, if you divide the number of lines where the 
## word "love" (all lowercase) occurs by the number of lines the word "hate" 
## (all lowercase) occurs, about what do you get?

## 4 (4.108592)
fileName="en_US.twitter.txt"
con=file(fileName,open="r")
lineTwitter=readLines(con)
longTwitter=length(line)
close(con)

loveTwitter<-grep("love",lineTwitter)
length(loveTwitter)
hateTwitter<-grep("hate",lineTwitter)
length(hateTwitter)
length(loveTwitter)/length(hateTwitter)

## Question 5

## The one tweet in the en_US twitter data set that matches the word 
## "biostats" says what?

## They haven't studied for their biostats exam 
## ("i know how you feel.. i have biostats on tuesday and i have yet to study =/")
biostatsTwitter<-grep("biostats",lineTwitter)
lineTwitter[biostatsTwitter]

## Question 6

## How many tweets have the exact characters "A computer once beat me at 
## chess, but it was no match for me at kickboxing". (I.e. the line matches those 
## characters exactly.)

## 3
sentenceTwitter<-grep("A computer once beat me at chess, but it was no match for me at kickboxing",lineTwitter)
length(sentenceTwitter)
