# Human Activity Recognition Using Smartphones Dataset Cleanup

One of the most exciting areas in all of data science right now is wearable computing. Companies like Fitbit, Nike, and Jawbone Up are racing to develop the most advanced algorithms to attract new users. 

This project will use as an input the data collected from the accelerometers from the Samsung Galaxy S smartphone:

* [https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip][2]

A full description of this dataset is available at the site where the data was obtained: 

* [http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones][1]
 
This repository provides 3 files:

- This **Readme.md** file
- A **Cookbook.mb** file that describes the variables, the data, and transformations done to the original data.
- An R script **run_analysis.R** with the actual code to perform the data processing.

In order to generate the output data described in Cookbook.md, the following steps shoudl be performed:

1. git clone this repository.
2. Download the data from the URL listed above.
3. Unzip the file in the R working directory
4. Source **run_analysis.R**

A **tidydata.txt** should be generated.

## License:

Use of this dataset in publications must be acknowledged by referencing the following publication [1] 

[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

This dataset is distributed AS-IS and no responsibility implied or explicit can be addressed to the authors or their institutions for its use or misuse. Any commercial use is prohibited.

Jorge L. Reyes-Ortiz, Alessandro Ghio, Luca Oneto, Davide Anguita. November 2012.


[1]: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones "URL"
[2]: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip "DATA"

