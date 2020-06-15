# GettingAndCleaningDataJohnsHopkings
The repository for the project of the Getting And Cleaning Data Course from the Johns Hopkings Data Science Specialization

## First Script
The first script you should run is `Setup Dataset.R`. That script will:

- Create the *data* and *output* directories.
- Download the zipped dataset
- Unzip the dataset into *data* directory.
- Rename the *UCI HAR Dataset* to *dataset* for simplicity purposes.

## Second Script

After running `Setup Dataset.R`, you should run `run_analysis.R`. That script will:

- Import *features.txt* as `features` and simplify the variables names.
  - As `features` will have 2 columns, the first one will be erased.
  - Using the function `gsub`, substitute the short and abbreviated names to expand them to be more readable.
- Create a `testDataset` using the data in *./data/dataset/test/*.
  - Import *subject_test.txt*, into `subject` which have the identification number of the subjects.
  - Import *y_test.txt*, into `activity`, which have the activity that the subject performed.
  - Import *X_test.txt*, into `test`, the test set. 
  - Rename the `test` variables using `features`.
  - Create `testDataset` using `subject`, `activity`, and `test`. 
  - Rename the first variable of `testDataset` is `Subject`and the second is `Activity`.
- Create a `trainDataset` using the data in *./data/dataset/train/*.
  - Import *subject_train.txt*, into `subject` which have the identification number of the subjects.
  - Import *y_train.txt*, into `activity`, which have the activity that the subject performed.
  - Import *X_train.txt*, into `train`, the training set. 
  - Rename the `train` variables using `features`.
  - Create `trainDataset` using `subject`, `activity`, and `train`. 
  - Rename the first variable of `trainDataset` is `Subject`and the second is `Activity`.
