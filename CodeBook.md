#Getting and Cleaning Data, codebook

##Datasets used
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 
###See the dataset readme for an in-depth description of its contents.

##Transformations
1- Merges the train and test datasets (append operation)
2- Extracts all the mean and standard deviation variables
3- Reads the activity names from "activity_labels.txt" and applies them to the relevant activities
4- Makes the variable names more friendly/human readable, but keeps them short
5- Creates a tidy dataset with the mean of each variable, ordered by Activity and Subject

##Variable names
- Subject: test/train subject number
- Activity: the activity measured
- Rest of variables are renamed from the original dataset names, you can see the new names here. For a description of each variable please refer to the dataset readme.


|    | Variable                             | Old variable name               |
|----|--------------------------------------|---------------------------------|
| 1  | Subject                              |                                 |
| 2  | Activity                             |                                 |
| 3  | Time.BodyAcc.Mean.X                  | tBodyAcc-mean()-X               |
| 4  | Time.BodyAcc.Mean.Y                  | tBodyAcc-mean()-Y               |
| 5  | Time.BodyAcc.Mean.Z                  | tBodyAcc-mean()-Z               |
| 6  | Time.GravityAcc.Mean.X               | tGravityAcc-mean()-X            |
| 7  | Time.GravityAcc.Mean.Y               | tGravityAcc-mean()-Y            |
| 8  | Time.GravityAcc.Mean.Z               | tGravityAcc-mean()-Z            |
| 9  | Time.BodyAccJerk.Mean.X              | tBodyAccJerk-mean()-X           |
| 10 | Time.BodyAccJerk.Mean.Y              | tBodyAccJerk-mean()-Y           |
| 11 | Time.BodyAccJerk.Mean.Z              | tBodyAccJerk-mean()-Z           |
| 12 | Time.BodyGyro.Mean.X                 | tBodyGyro-mean()-X              |
| 13 | Time.BodyGyro.Mean.Y                 | tBodyGyro-mean()-Y              |
| 14 | Time.BodyGyro.Mean.Z                 | tBodyGyro-mean()-Z              |
| 15 | Time.BodyGyroJerk.Mean.X             | tBodyGyroJerk-mean()-X          |
| 16 | Time.BodyGyroJerk.Mean.Y             | tBodyGyroJerk-mean()-Y          |
| 17 | Time.BodyGyroJerk.Mean.Z             | tBodyGyroJerk-mean()-Z          |
| 18 | Time.BodyAccMag.Mean                 | tBodyAccMag-mean()              |
| 19 | Time.GravityAccMag.Mean              | tGravityAccMag-mean()           |
| 20 | Time.BodyAccJerkMag.Mean             | tBodyAccJerkMag-mean()          |
| 21 | Time.BodyGyroMag.Mean                | tBodyGyroMag-mean()             |
| 22 | Time.BodyGyroJerkMag.Mean            | tBodyGyroJerkMag-mean()         |
| 23 | Fourier.BodyAcc.Mean.X               | fBodyAcc-mean()-X               |
| 24 | Fourier.BodyAcc.Mean.Y               | fBodyAcc-mean()-Y               |
| 25 | Fourier.BodyAcc.Mean.Z               | fBodyAcc-mean()-Z               |
| 26 | Fourier.BodyAcc.MeanFreq-X           | fBodyAcc-meanFreq()-X           |
| 27 | Fourier.BodyAcc.MeanFreq-Y           | fBodyAcc-meanFreq()-Y           |
| 28 | Fourier.BodyAcc.MeanFreq-Z           | fBodyAcc-meanFreq()-Z           |
| 29 | Fourier.BodyAccJerk.Mean.X           | fBodyAccJerk-mean()-X           |
| 30 | Fourier.BodyAccJerk.Mean.Y           | fBodyAccJerk-mean()-Y           |
| 31 | Fourier.BodyAccJerk.Mean.Z           | fBodyAccJerk-mean()-Z           |
| 32 | Fourier.BodyAccJerk.MeanFreq-X       | fBodyAccJerk-meanFreq()-X       |
| 33 | Fourier.BodyAccJerk.MeanFreq-Y       | fBodyAccJerk-meanFreq()-Y       |
| 34 | Fourier.BodyAccJerk.MeanFreq-Z       | fBodyAccJerk-meanFreq()-Z       |
| 35 | Fourier.BodyGyro.Mean.X              | fBodyGyro-mean()-X              |
| 36 | Fourier.BodyGyro.Mean.Y              | fBodyGyro-mean()-Y              |
| 37 | Fourier.BodyGyro.Mean.Z              | fBodyGyro-mean()-Z              |
| 38 | Fourier.BodyGyro.MeanFreq-X          | fBodyGyro-meanFreq()-X          |
| 39 | Fourier.BodyGyro.MeanFreq-Y          | fBodyGyro-meanFreq()-Y          |
| 40 | Fourier.BodyGyro.MeanFreq-Z          | fBodyGyro-meanFreq()-Z          |
| 41 | Fourier.BodyAccMag.Mean              | fBodyAccMag-mean()              |
| 42 | Fourier.BodyAccMag.MeanFreq          | fBodyAccMag-meanFreq()          |
| 43 | Fourier.BodyBodyAccJerkMag.Mean      | fBodyBodyAccJerkMag-mean()      |
| 44 | Fourier.BodyBodyAccJerkMag.MeanFreq  | fBodyBodyAccJerkMag-meanFreq()  |
| 45 | Fourier.BodyBodyGyroMag.Mean         | fBodyBodyGyroMag-mean()         |
| 46 | Fourier.BodyBodyGyroMag.MeanFreq     | fBodyBodyGyroMag-meanFreq()     |
| 47 | Fourier.BodyBodyGyroJerkMag.Mean     | fBodyBodyGyroJerkMag-mean()     |
| 48 | Fourier.BodyBodyGyroJerkMag.MeanFreq | fBodyBodyGyroJerkMag-meanFreq() |
| 49 | Time.BodyAcc.Std.X                   | tBodyAcc-std()-X                |
| 50 | Time.BodyAcc.Std.Y                   | tBodyAcc-std()-Y                |
| 51 | Time.BodyAcc.Std.Z                   | tBodyAcc-std()-Z                |
| 52 | Time.GravityAcc.Std.X                | tGravityAcc-std()-X             |
| 53 | Time.GravityAcc.Std.Y                | tGravityAcc-std()-Y             |
| 54 | Time.GravityAcc.Std.Z                | tGravityAcc-std()-Z             |
| 55 | Time.BodyAccJerk.Std.X               | tBodyAccJerk-std()-X            |
| 56 | Time.BodyAccJerk.Std.Y               | tBodyAccJerk-std()-Y            |
| 57 | Time.BodyAccJerk.Std.Z               | tBodyAccJerk-std()-Z            |
| 58 | Time.BodyGyro.Std.X                  | tBodyGyro-std()-X               |
| 59 | Time.BodyGyro.Std.Y                  | tBodyGyro-std()-Y               |
| 60 | Time.BodyGyro.Std.Z                  | tBodyGyro-std()-Z               |
| 61 | Time.BodyGyroJerk.Std.X              | tBodyGyroJerk-std()-X           |
| 62 | Time.BodyGyroJerk.Std.Y              | tBodyGyroJerk-std()-Y           |
| 63 | Time.BodyGyroJerk.Std.Z              | tBodyGyroJerk-std()-Z           |
| 64 | Time.BodyAccMag.Std                  | tBodyAccMag-std()               |
| 65 | Time.GravityAccMag.Std               | tGravityAccMag-std()            |
| 66 | Time.BodyAccJerkMag.Std              | tBodyAccJerkMag-std()           |
| 67 | Time.BodyGyroMag.Std                 | tBodyGyroMag-std()              |
| 68 | Time.BodyGyroJerkMag.Std             | tBodyGyroJerkMag-std()          |
| 69 | Fourier.BodyAcc.Std.X                | fBodyAcc-std()-X                |
| 70 | Fourier.BodyAcc.Std.Y                | fBodyAcc-std()-Y                |
| 71 | Fourier.BodyAcc.Std.Z                | fBodyAcc-std()-Z                |
| 72 | Fourier.BodyAccJerk.Std.X            | fBodyAccJerk-std()-X            |
| 73 | Fourier.BodyAccJerk.Std.Y            | fBodyAccJerk-std()-Y            |
| 74 | Fourier.BodyAccJerk.Std.Z            | fBodyAccJerk-std()-Z            |
| 75 | Fourier.BodyGyro.Std.X               | fBodyGyro-std()-X               |
| 76 | Fourier.BodyGyro.Std.Y               | fBodyGyro-std()-Y               |
| 77 | Fourier.BodyGyro.Std.Z               | fBodyGyro-std()-Z               |
| 78 | Fourier.BodyAccMag.Std               | fBodyAccMag-std()               |
| 79 | Fourier.BodyBodyAccJerkMag.Std       | fBodyBodyAccJerkMag-std()       |
| 80 | Fourier.BodyBodyGyroMag.Std          | fBodyBodyGyroMag-std()          |
| 81 | Fourier.BodyBodyGyroJerkMag.Std      | fBodyBodyGyroJerkMag-std()      |