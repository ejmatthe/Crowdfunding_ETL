# Crowdfunding_ETL

## Project Overview

This collaborative project focuses on using the ETL (Extract, Transform, and Load) process on a crowdfunding dataset and loading the created files into a relational database. The main goal was to understand the ETL components relevant to exploring and modifiying databases by employing effective tools and methods that would enable the generation of modified crowdfunding data to meet professional analysis requirements. 

## Resources


## Project Report/Summary

An ETL pipeline was built using Python, Pandas, and Python dictionary methods to extract and transform the crowdfunding data from Excel files. Following the data transformation, the data was stored in flat files, namely, four CSV files were created and used to generate an Entity Relationship Diagram (ERD) and a table schema. With these completed the CSV files were loaded into a Postgres SQL database.

## Process

### Extract and Transform
* Data was extracted from the Crowdfunding and Contact Excel files. In order to make a clean, usable database at the end, we needed to clean, organize and sort the data from the two Excel files. The first step was extracting the categories and subcategories of the crowdfunding campaigns and creating a separate dataframe for each. These two dataframes continued one column of unique category entries, and another to denote them as an id (cat1, cat2 and so on). Then, we created a dataframe for the overall campaign information. Some of the column names were renamed, the datatypes in others were changed to better reflect the data (such as converting a date column to a datetime format). The final version was then merged wtih the category and subcategory dataframes to refer to the ids instead of the lengthier string. The last big portion of data to transform was the contact information. It involved splitting one column of data into 4, including first and last name, email address and contact id. All 4 of these dataframes were then exported as CSVs.
* 
### Load
An ERD of the tables was sketched using the four CSV files, data types, primary keys, foreign keys, and other constraints were specified accordingly.
The information from the ERD was used to create a table schema for each CSV file, this database schema was saved as a Postgres file named crowdfunding_db_schema.sql. This schema was used to create a database crowdfunding_db. The table creation was vwerified by running a SELECT statement for each table and each CSV file was imported into its corresponding SQL table. Lastly, to verify that each table had the correct data, a SELECT statement for each was ran. 

### Takeaways/the why:
The use of an ETL pipeline in this project was optimal because it conveniently facilitates data gathering, processing, and storing in an efficient manner.
