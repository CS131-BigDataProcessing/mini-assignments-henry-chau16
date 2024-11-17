README

Files:

AB_NYC_2019.csv - csv file containing 2019 NYC AirBnB dataset

preprocessing.sh - shell script that automates 3 data cleaning tasks (only compatible with files with the same schema as that of the listed csv file above):
    
    1. Prints out each row with any missing values; removes rows with any missing values and saves output to user specified output file

    2. Removes any duplicate entries evaluated by listing id (first column)

    3. Detects outliers of the price (10th) column based on a threshold of 2 x the mean price of the dataset. Removes outliers from the ouput file and saves outlier lines with line numbers to a separate file (outliers.csv)


Calling preprocessing.sh:

sh preprocessing.sh <input-file> <output-file>

Note: it is recommended to have/specify the input and output files in the current directory as the script will save outliers.csv to the current directory
