#Getting and Cleaning Data, assignment
##This github repo contains three files relevant to the Getting and Cleaning Data assignment;

1) README.md
2) run_analysis.R
3) CodeBook.md

##Preperation:
Download the dataset and unzip it to your root project directory:
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

##Dependencies:
You need to make sure the following packages are available to be called in R:
- reshape2
- plyr

Run the script and you get a lovely, clean dataset ordered by Activity and then Subject.

##Assumptions and statements:
- Question 2 specifically asks for ALL means and standard deviations, so this script will use all those data variables. Better to be safe than sorry.
- The question of what is "Tidy Data" is an open one. I think the resultant dataset is tidy, ie the variable names are not too long, and its ordered logically with no missing values. See this thread for a better insight if you have doubts: https://class.coursera.org/getdata-005/forum/thread?thread_id=199

