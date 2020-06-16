# Code Book, by Filipe Lima

The data is based on the Human Activity Recognition Using Smartphones Data Set, with the whole description in this [link](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones). The raw dataset can be downloaded [here](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip).

## The finalproject.txt dataset

The variables in that *dataset* were selected from the *UCI HAR Dataset*, merging the train and test sets, and after that, selecting the variables with either *Mean* or *Standard Deviation*. And than, the mean of every variable for each subject and activity. `Activity`, which describes the activities that `Subject` executed. `Subject` is a number between 1 and 30 representing a different subject. The other variables are the following:

-  TimeBodyAcceleration.Mean.X
-  TimeBodyAcceleration.Mean.Y
-  TimeBodyAcceleration.Mean.Z
-  TimeBodyAcceleration.StandardDeviation.X
-  TimeBodyAcceleration.StandardDeviation.Y
-  TimeBodyAcceleration.StandardDeviation.Z
-  TimeGravityAcceleration.Mean.X
-  TimeGravityAcceleration.Mean.Y
-  TimeGravityAcceleration.Mean.Z
-  TimeGravityAcceleration.StandardDeviation.X
-  TimeGravityAcceleration.StandardDeviation.Y
-  TimeGravityAcceleration.StandardDeviation.Z
-  TimeBodyAccelerationJerk.Mean.X
-  TimeBodyAccelerationJerk.Mean.Y
-  TimeBodyAccelerationJerk.Mean.Z
-  TimeBodyAccelerationJerk.StandardDeviation.X
-  TimeBodyAccelerationJerk.StandardDeviation.Y
-  TimeBodyAccelerationJerk.StandardDeviation.Z
-  TimeBodyGyro.Mean.X
-  TimeBodyGyro.Mean.Y
-  TimeBodyGyro.Mean.Z
-  TimeBodyGyro.StandardDeviation.X
-  TimeBodyGyro.StandardDeviation.Y
-  TimeBodyGyro.StandardDeviation.Z
-  TimeBodyGyroJerk.Mean.X
-  TimeBodyGyroJerk.Mean.Y
-  TimeBodyGyroJerk.Mean.Z
-  TimeBodyGyroJerk.StandardDeviation.X
-  TimeBodyGyroJerk.StandardDeviation.Y
-  TimeBodyGyroJerk.StandardDeviation.Z
-  TimeBodyAccelerationMagnitude.Mean
-  TimeBodyAccelerationMagnitude.StandardDeviation
-  TimeGravityAccelerationMagnitude.Mean
-  TimeGravityAccelerationMagnitude.StandardDeviation
-  TimeBodyAccelerationJerkMagnitude.Mean
-  TimeBodyAccelerationJerkMagnitude.StandardDeviation
-  TimeBodyGyroMagnitude.Mean
-  TimeBodyGyroMagnitude.StandardDeviation
-  TimeBodyGyroJerkMagnitude.Mean
-  TimeBodyGyroJerkMagnitude.StandardDeviation
-  FrequencyBodyAcceleration.Mean.X
-  FrequencyBodyAcceleration.Mean.Y
-  FrequencyBodyAcceleration.Mean.Z
-  FrequencyBodyAcceleration.StandardDeviation.X
-  FrequencyBodyAcceleration.StandardDeviation.Y
-  FrequencyBodyAcceleration.StandardDeviation.Z
-  FrequencyBodyAcceleration.MeanFrequency.X
-  FrequencyBodyAcceleration.MeanFrequency.Y
-  FrequencyBodyAcceleration.MeanFrequency.Z
-  FrequencyBodyAccelerationJerk.Mean.X
-  FrequencyBodyAccelerationJerk.Mean.Y
-  FrequencyBodyAccelerationJerk.Mean.Z
-  FrequencyBodyAccelerationJerk.StandardDeviation.X
-  FrequencyBodyAccelerationJerk.StandardDeviation.Y
-  FrequencyBodyAccelerationJerk.StandardDeviation.Z
-  FrequencyBodyAccelerationJerk.MeanFrequency.X
-  FrequencyBodyAccelerationJerk.MeanFrequency.Y
-  FrequencyBodyAccelerationJerk.MeanFrequency.Z
-  FrequencyBodyGyro.Mean.X
-  FrequencyBodyGyro.Mean.Y
-  FrequencyBodyGyro.Mean.Z
-  FrequencyBodyGyro.StandardDeviation.X
-  FrequencyBodyGyro.StandardDeviation.Y
-  FrequencyBodyGyro.StandardDeviation.Z
-  FrequencyBodyGyro.MeanFrequency.X
-  FrequencyBodyGyro.MeanFrequency.Y
-  FrequencyBodyGyro.MeanFrequency.Z
-  FrequencyBodyAccelerationMagnitude.Mean
-  FrequencyBodyAccelerationMagnitude.StandardDeviation
-  FrequencyBodyAccelerationMagnitude.MeanFrequency
-  FrequencyBodyBodyAccelerationJerkMagnitude.Mean
-  FrequencyBodyBodyAccelerationJerkMagnitude.StandardDeviation
-  FrequencyBodyBodyAccelerationJerkMagnitude.MeanFrequency
-  FrequencyBodyBodyGyroMagnitude.Mean
-  FrequencyBodyBodyGyroMagnitude.StandardDeviation
-  FrequencyBodyBodyGyroMagnitude.MeanFrequency
-  FrequencyBodyBodyGyroJerkMagnitude.Mean
-  FrequencyBodyBodyGyroJerkMagnitude.StandardDeviation
-  FrequencyBodyBodyGyroJerkMagnitude.MeanFrequency
-  Angle.TimeBodyAccelerationMean.Gravity
-  Angle.TimeBodyAccelerationJerkMean.GravityMean
-  Angle.TimeBodyGyroMean.GravityMean
-  Angle.TimeBodyGyroJerkMean.GravityMean
-  Angle.X.GravityMean
-  Angle.Y.GravityMean
-  Angle.Z.GravityMean


Except for the variables initiated by "Angle", all the others can be decomposed between a feature described in the *features_info.txt* and a self explanatory function: `Mean`, `StandardDeviation`, `Mean Frequency`. The *X, Y or Z* after some of them is related to the XYZ-Axis.

The rest is initiated by either `Time` or `Frequency`, representing the domain. If the variable name have either `Acceleration` or `Gravity`, is related to the `Body` acceleration or the `Gravity` acceleration at the moment, in *g* units. The `Jerk` means the body linear acceleration (`BodyAcceleration`) in *g* units and angular velocity (`BodyGyro`), calculated in radians per second. `Magnitude` is the Euclidian norm of the variable.

For more information, check the Reference.

## Reference

Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. A Public Domain Dataset for Human Activity Recognition Using Smartphones. **21th European Symposium on Artificial Neural Networks, Computational Intelligence and Machine Learning, ESANN 2013.** Bruges, Belgium 24-26 April 2013.