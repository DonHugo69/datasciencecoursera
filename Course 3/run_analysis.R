## This script assumes that the data is available on the same level as the
## script itself.

## Dataset can be found here:
## https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

## * Libraries
## Load required libraries
library(dplyr)

## * Data import
## Import features
features <- read.delim(file = "features.txt", header = FALSE, sep = "")

## Import test Data
x_df <- read.delim(file = "X_test.txt", sep = "", header = FALSE)
y_df <- read.delim(file = "y_test.txt", sep = "", header = FALSE)
subjects <- read.delim(file = "subject_test.txt", header = FALSE, sep = "")

## Use features as variables names, name activity labels and subjects
names(x_df) <- features$V2
names(y_df) <- "Activity"
names(subjects) <- "Subject"

## Merge test data
test_df <- bind_cols(x_df, y_df, subjects)

## Import training Data
x_df <- read.delim(file = "X_train.txt", sep = "", header = FALSE)
y_df <- read.delim(file = "y_train.txt", sep = "", header = FALSE)
subjects <- read.delim(file = "subject_train.txt", header = FALSE, sep = "")

## Use features as variables names, name activity labels and subjects
names(x_df) <- features$V2
names(y_df) <- "Activity"
names(subjects) <- "Subject"

## Merge training data
train_df <- bind_cols(x_df, y_df, subjects)

## * Combining test and training data
## Create combined data
merged_df <- bind_rows(test_df, train_df)

## * Selecting mean and standard deviation
## Select only mean and standard deviation of measurements via grep
df <- merged_df %>% select(grep("-mean\\(\\)|-std\\(\\)" ,names(merged_df), value = TRUE), Activity, Subject)

## * Assign labels to activities
# Label "Activities" properly
df$Activity[df$Activity == 1]  <- "Walking"
df$Activity[df$Activity == 2]  <- "Walking (upstairs)"
df$Activity[df$Activity == 3]  <- "Walking (downstairs)"
df$Activity[df$Activity == 4]  <- "Sitting"
df$Activity[df$Activity == 5]  <- "Standing"
df$Activity[df$Activity == 6]  <- "Laying"

## Descriptive variable names have been assigned above by using the names in
## "features.txt"

## * Create new, tidy data frame
## Grouped by avtivity and subject, then created averages
tidy_df <- df %>% group_by(Activity, Subject) %>% summarise_all(mean)
write.table(tidy_df, "tidy_data.txt" ,row.name = FALSE)

## Local Variables:
## eval: (outshine-mode 1)
## End:
