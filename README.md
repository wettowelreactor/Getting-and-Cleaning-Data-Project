Getting and Cleaning Data Project
=================================
Original Data link <https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip>

This takes the provided Samsung data and cleans it up according to project specification.
The included scripts assume that the provided data directory has the same structure as those of the original data as linked above. Additionally the scripts use only summary data provided and ignore the "Inertial Signals" raw data.

The scripts consist of one file (run_analysis) and two functions:

run_analysis(data_directory = 'data')
This is the main function that should be called. It expects the data directory of where the raw data is located otherwise it assumes the data directory to be in a folder called "data" located in the current working directory.

This script loads all the relevant data files into data frames. From there is labels the features and activities using the provided data files and assembles the two master data frames (test and subject). do.call is used with the cbind method due to R's poor memory handling when combining multiple data frames. From there it combines the two data frames into a single master data frame called tidydata. Lastly it drops all features not related mean() or std(). Due to ambiguity in the project description a judgment call had to be made for angle features that referred to mean but did not employee it directly. Those features have been dropped from the final data.

The function outputs a file called tidy_data.csv which contains the cleaned up data. This file has been renamed to tidy_data.txt with no other modifications when uploaded to the class due to inherent file name restrictions in the courseware.



load_dataframes(data_directory)
This is a helper function for the run_analysis function. It expects the It expects the data directory of where the raw data is located otherwise it assumes the data directory to be in a folder called "data" located in the current working directory. It should not be called directly by the user.

This function loads the various data files into a list of data frames used by the main function.
