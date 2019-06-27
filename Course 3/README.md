# Getting and Cleaning Data Course Project

## Requirements

`dplyr`

## Description

`run_analysis.R` is the main script which will process the data.

In the first step it will import the necessary data from the `.txt` files and
merge them into one data frame. During this, it will also take care of variable
naming.

From the merged data a new data frame will be created which only contains the
mean values and standard deviations of the original data set. 

This data set will be used to create `tidy_data.txt` which contains the average
of each variable, grouped by subject and activity.
