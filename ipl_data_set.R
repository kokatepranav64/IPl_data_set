install and load packages to wrangle data and date attributes
install.packages("tidyverse") # Helps to wrangle data
library(tidyverse)
library(lubridate) #Helps wrangle date attribues
install.packages("here")
library(here)
# insall and load packages to simplify data cleaning tasks and functions for cleaning data
install.packages("skimr")
install.packages("janitor")
library(skimr) #Helps to simplifying data cleaning tasks
library(janitor) #Gives funcions for cleaning data
library(dplyr)
library(readr)
#now all important packages are installed and loaded.Now lets move towards further steps for analysis.

##########################################################################################3
#Loading data sets
deliveries <- read.csv('deliveries.csv')
matches    <- read.csv('matches.csv')  

#checking for common coklumns in each dataframe
head(deliveries)
head(matches)
#after checking both rows and column we can se that trip id,batting team and bowling team in deliveries dataframe and Id,team1 and team2 in matches datarame are similar
#renaming in matches dataframe 
matches = matches %>% rename(bowling_team= team1,batting_team= team2)
view(matches)

###############
# calculating total no of matches played 
total_no_matches_played <- count(matches)
total_no_matches_played

#counting total no of seasons 
season_count = length(unique(matches$season))

#team win by maximum no of runs
runs_max = matches[which.max(matches$win_by_runs),]
# this will display a full row but we want values in particular columns
runs_max %>% select('winner','win_by_runs') # this gives as to column winner and winner by runs

#win by maximum wickets
wic_max = matches[which.max(matches$win_by_wickets),]
wic_max%>% select('winner','win_by_wickets')


#win by minimum wickets
matches %>% filter(win_by_wickets != 0) %>% filter(win_by_wickets == min(win_by_wickets)) %>% select('winner','win_by_wickets')

#win by minimum runs
matches %>% filter(win_by_runs != 0) %>% filter(win_by_runs ==min(win_by_runs)) %>% select('winner','win_by_runs')

#########################################################################################################################################

#Visualizations

#installing packages for visualizations
install.packages("ggplot2")
install.packages("plotly")

#loading library
library(ggplot2)
library(plotly)

season_mt_cnt = matches %>% group_by(season) %>% summarise(match_cnt = n()) %>% ggplot() + geom_bar(aes(season,match_cnt, fill = season,color = 'red'), stat = 'identity')+ coord_flip()
ggplotly(season_mt_cnt)

#most successfull team
 matches %>% group_by(winner) %>% summarise(winner_count = n()) %>% filter(winner_count==max(winner_count))
 
 # visualiszation for teams that won maximum matches
 matches %>% group_by(winner) %>% summarise(winner_count = n()) %>% ggplot() +geom_bar(aes(winner,winner_count,fill = winner),stat = 'identity')+coord_flip()
 
 
 
