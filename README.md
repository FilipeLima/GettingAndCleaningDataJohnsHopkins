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

-Import *features.txt* as `features` and simplify the variables names.
-- As `features` will have 2 columns, the first one will be erased.
+ Using the function `gsub`, substitute and expand the variables names.
