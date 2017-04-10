Assignment for Coursera course Getting and Cleaning Data
==========================================================

This is the readme documentent of the project assignment for Coursera Getting and Cleaning Data.

The repository contains in the  following files the "tidy" data set, R code used to create it, and codebooks in markdown.

1. description of files : README.md
2. Codebook: CodeBook.md
3. Tidy data set: tidy_dataset.txt
4. R code to generate data: run_analysis.R


Details on R code to generate data
==================================
The R code creates the mean values of the original source data for each subject and activity.

In particular for the creation of this data set the following transformations have been applied:

1. Training and Test sets have been merged into one data set
2. Only the measurements on the mean and standard deviation for each measurement have been isolated.
3. Numeric activity names in the data set have been replaced by their corresponding textual representation
4. The dataset has been amended with with descriptive variable names
5. For each Activity and Subject a mean values has been calculated. For each original column xxx_std() or xxx_mean() a corresponding variable Mean_xxx_std() and Mean_xxx_mean() have been included in the current dataset.

For further details on the source data follow the references in the Codebook.md
For further details on the applied transformations please check out the comments in run_analysis.R
