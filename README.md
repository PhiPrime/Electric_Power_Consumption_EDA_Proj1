# Electric_Power_Consumption_EDA_Proj1
Demonstrate my understanding of the base plotting system by creating four plots based off the power consumption that is given by UCI Irvine (https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip)

This dataset was read in then the data points for 2007-02-01 to 2007-02-02 were parsed out of the data  

Assignment:
"Our overall goal here is simply to examine how household energy usage varies over a 2-day period in February, 2007. Your task is to reconstruct the following plots (Saved in *Goal_Output_Images*), all of which were constructed using the base plotting system.

For each plot you should

* Construct the plot and save it to a PNG file with a width of 480 pixels and a height of 480 pixels.

* Name each of the plot files as plot1.png, plot2.png, etc.

* Create a separate R code file (plot1.R, plot2.R, etc.) that constructs the corresponding plot, i.e. code in plot1.R constructs the plot1.png plot. Your code file should include code for reading the data so that the plot can be fully reproduced. You should also include the code that creates the PNG file. (The condenced data is stored in the *data* directory of this project)

* Add the PNG file and R code file to your git repository

When you are finished with the assignment, push your git repository to GitHub so that the GitHub version of your repository is up to date. There should be four PNG files and four R code files."

This project includes the following files:

* *data/condencedData.csv* - a condenced version of the dataset that only has the two dates that are to be evaluated  
* *Goal_Output_Images* - The four images that are to be reproduced, they were forked from: https://github.com/rdpeng/ExData_Plotting1  
* *CodeBook.md* - a codebook that explains the nine variables in *condencedData.csv*  
* *extractData.R* - code that loads in the zip file and extracts data for the two days in question.
* *LICENSE* - a standard GNU GENERAL PUBLIC LICENSE V3  
* *plot[X].png* - [X] ranges from 1 to 4 and mirror the respective Goal Output Images  
* *plot[X].R* - R code that generates the respective [X] png file  
* *README.md* - This document  
* *run.R* - calls to other R functions and generates the plots  
