# IPl_data_set Analysis
![ipl Image](Images/ipl%20image.jpg)
img_ref:Exchange4media

## Inroduction

Now that this year's IPL is over, let's not curb our cricket love and start analyzing the whole of IPL with this latest and complete Indian Premier League dataset. It contains the match descriptions, results, winners, player of the matches, ball by ball dataset and much more. So, stop thinking and start analyzing .

## About Data Set

The data set includes information about: Ipl data set till 2017.following aew the attributes of the data sets.

The features present in the data are:

id-Numeric attribute.

Season-year of the match.

city-city name.

date-date of match.

team1-team one.

team2-team two.

toss_winner - team who won the toss.

toss_decision-whether the team selected to bat or bowl.
 
result-whether the match or seleccted ot cancled.

dl applied or not.

win_by_runs
.
win_by_wickets

player_of_the_match.

venue.

umpire1.

umpire2.

umpire3.

you can download the data-set by [clicking on this link](https://www.kaggle.com/datasets/patrickb1912/ipl-complete-dataset-20082020).

## Business task
The goal of this case study is to provide clear insightsby finding these:

>How many matches we’ve got in the dataset?
>
>How many seasons we’ve got in the dataset?
>
>Which Team had won by maximum runs?
>
>Which Team(s) had won by maximum wicket?
>
>Which Team(s) had won by closest Margin (minimum runs)?
>
>Which Team had won by minimum wicket?
>
>Which Season had most number of matches?
>
>Barplot for season with more matches
>
>Which IPL Team is more successful?
>
>Barplot for team who won max matches
>
>Has Toss-winning helped in winning matches?

## Preparing The data

This case study uses Ipl match data set  to analyze. The data has been made available by kaggle.com. under and open license. The data can be dowloaded [here](https://www.kaggle.com/datasets/patrickb1912/ipl-complete-dataset-20082020).

This data is reliable, original, comprehensive and current as it is internally collected and stored safely by Ipl from year 2008 to May 2017. 

The data selected for use covers total 9 years of data from year 2008 to 2017. There are intotal 2 Data sets used named 'Deliveries' and 'Matches' . The datasets are organized in tabular format and have 21 identical columns in deliveries ddataset and 18 identical columns in matches dataset. Used both of the datasets purposefully to extrct the required data.Ther are 3 similar columns from each data set which help to extrat my required data in easiest way.

## Processing the data from dirty to clean 

### Tools

To process the data from dirty to clean, I chose to use **R.** This is because R is relatively fast and thus useful in dealing with huge dasets. R is also heavily supported by handy open-source Packages such as tidyvers,dplyr,ggplot2

### Cleaning And Transforming data 
First I upload both  data set  of .csv format in R studio.During the next step I checked all columns and few rows of both datasets and rename some column names of matches.csv dataset based on the similarity of rows in deliveries.csv data set
Next I check data types of both datasets and then replace data types of some columns

## Analyze Data to Answer Questions

In this step, I analyzed the cleaned data to find answers of the businesstask  differently.

These are the my findings if the given business task after cleaning and analyzing data:-



