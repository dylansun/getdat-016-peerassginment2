getdat-016-peerassginment2
==========================
This repository contains my solution for peer-assignment in Getting and Cleaning Data class.

run_analysis.R is a script that tidies up and produces aggregate data for the original data set[1].

The script doesn't contain a part of auto-fetching dataset. so make sure you also download the dataset in my reposity without name changing. 

The training and test sets are merged together, provided with meaningful labels, activity labels are converted to sensible names and only the mean and std observations are retained. 

After that, the script produces averages for all subject-activity groups, and writes a txt file--"tidydat.txt" in the working directory with the resulting data set.

The run_analysis.R script is commented to indicate the functionality of each block of code. See CodeBook.md for more information on resulting data set.

Reference:

[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012
