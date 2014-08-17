## Data Science - Getting and Cleaning Data
## Course Project

The purpose of this project is to demonstrate the student ability to collect, work with, and clean a data set. 
The goal is to prepare tidy data that can be used for later analysis. 

This repository contains the following
   1. a tidy dataset file (called `tidyset.txt`) 
   2. the script used for performing the analysis (called `run_analysis.R`) 
   3. a code book that describes the variables, the data, and any transformations or work that I performed to clean up the data (called `CodeBook.md`)
   4. `README.md` provides a description of how the script works. 

The `run_analysis.R` script follows the steps below 

#### 1. Read the source files

The following files are read using the `read.table()` method 
- ./test/X_test.txt
- ./test/y_test.txt
- ./test/subject_test.txt
- ./train/X_train.txt
- ./train/y_train.txt
- ./train/subject_train.txt
- ./features.txt
- ./activity_labels.txt

#### 2. Merge the training and the test sets to create one data set.  

The merge steps are as follows

1. Build the merged test set called `test_all` by adding columns (cbind) subject and y as first and second columns measurment columns follow (third column onwards). The resulting dimension is 2947x563
2. Build the merged train set called `train_all` by adding columns (cbind) subject and y as first and second columns measurment columns follow (third column onwards). The resulting dimension is
7352x563
3. Build the merged set called `all` by adding test set rows (rbind) to train set. The resulting dimension is 10299x563

I also test the resulting dataset for NA values by using the `na.fail(all)` method call.
As there were no errors returned by `na.fail()`, I conclude are no NA in the dataframe


#### 3. Label the data set with descriptive variable names.  

I build a vector of features names by using the second column of dataframe built from features.txt. 
I then left assign the column names using `names(all)<-`

The column names provided are human readable. 
I decide not to expand all variable names (e.g. f becomes fourier) as very long variable names compromise readability. 
Additional information re variable names is provided in CodeBook.md 

#### 4. Use descriptive activity names to name the activities in the data set.

I overwrite $activity which is so far of int type with its descriptive activity name by looking up `activty_labels` dataframe
Subsetting is used to perform this action on each activity. 

#### 5. Extracts only the measurements on the mean and standard deviation for each measurement. 

After reviewing the features names, I decided to include all features containing "mean" or "std" in their name.
The `matchcols()` method of the gdata package returns vectors of column names matching the terms provided.
Matching is case sensitive so we pass "Mean" and "mean". "std" only occurs in lower case form so there is no need to pass "Std".
`matchcols()` method help can be found [here](http://svitsrv25.epfl.ch/R-doc/library/gdata/html/matchcols.html)

Once columns are identified, I use subsetting to build the extract dataframe named `allsub`. 
The resulting dimension is 10299x88

#### 6. Creates a second, independent tidy data set with the average of each variable for each activity and each subject. 

I use the `aggregate()` method to group rows by Activity and Subject. 
In this call, the method applies a the mean function to all variables in each group. 

I write the second data set to `tidyset.txt` file using `row.names = FALSE` 

Finally, I confirm that the tidy set criteria provided in week 1 lesson apply to the tidayset.txt provided
- Each variable you measure should be in one column **- DONE**
- Each different observation of that variable should be in a different row **- DONE**
- There should be one table for each "kind" of variable **- DONE**
- Include a row at the top of each file with variable names **- DONE**
- Make variable names human readable AgeAtDiagnosis instead of AgeDx **- DONE**
- In general data should be saved in one file per table. **- DONE**



####Thanks for reading
*- BlueBonobo*


