# DatabasesSQLforDataSci
Databases and SQL for Data Science by IBM on Coursera

The hands-on labs for this course uses the IBM Cloud environment for working with a relational database. The database is created and accessed with IBM Db2 from the web browser.

## basic_sql_commands.sql  
This script contains basic sql commands for dropping tables, creating tables (with a primary key), inserting data into tables, and updating tables in the Db2 IBM Cloud database.

## sql_functions_pet_sale.ipynb
This script uses python to create and populate a pet sale table in the Db2 IBM Cloud database and to query the table with built-in functions including AVG, SUM, MAX, ROUND, COUNT, LENGTH, LCASE, UCASE, DISTINCT, CAST, DAY, MONTH, and CURRENT DATE.

## HR Database  
This folder contains scripts for querying an HR database with advanced SQL commands.  
* _HR Database Tables.pdf_ illustrates the structure of the HR database.  
* _Script_Create_Tables.sql_ contains the code for creating the 5 HR database tables.
* _Script_Query_HR_1.sql_ contains SQL queries with LIKE, BETWEEN, WHERE, ORDER BY, GROUP BY, COUNT, AVG, and HAVING clauses. It also contains a query that uses aliases and extracts information from two tables.  
* _Script_Query_HR_2.sql_ contains SQL queries with JOIN operations.  

The data for the HR database was loaded into the Db2 database from CSV files.

## Db Access with Python
This folder contains Jupyter Notebook scripts that connect to and query an IBM Db2 database.  
* _Connecting_to_Db.ipynb_ connects to a Db2 database on IBM Cloud using Python.  
* _Querying_Db.ipynb_ accesses a Db2 database on IBM Cloud using Python. This script also creates a table, inserts data, queries the data, and retrieves a result set into a Pandas data frame.  
* _SQL_magic.ipynb_ uses SQL Magic to accesse a Db2 database on IBM Cloud using Python. This script also uses SQL Magic to create a table, insert data, query the data, and retrieve a result set into a Pandas data frame.    
* _Analyzing_data.ipynb_ stores a dataset into a database from a .CSV file using Python. This script also queries and analyzes the data using SQL and Python.   

## Chicago School Progress
This folder contains the Chicago Public School Progress Report files. This lab involved working with a real word dataset using SQL and Python to query columns with spaces or special characters in their names and with mixed names. It also required the use of built in database functions.  
* _CPS Progress Report 2011-12.csv_ is the dataset showing all school-level performance data used to create CPS School Report Cards for the 2011-2012 school year. The data was loaded into a Db2 database on IBM Cloud.  
* _CPS_reportcard_data_description.pdf_ contains descriptions of the report card dataset _CPS Progress Report 2011-12.csv_  
* _Chicago_school_progress.ipynb_ contains the scripts used to connect to and query the database.  

## Final Course Assignment
This folder contains data files and a Jupyter Notebook script that demonstrates use of a variety of SQL commands to query the three datasets.  
* _Census_Data.csv_ contains six socioeconomic indicators of public health significance and a “hardship index,” by Chicago community area, for the years 2008 – 2012. For more detailed information, see the [data description](https://data.cityofchicago.org/Health-Human-Services/Census-Data-Selected-socioeconomic-indicators-in-C/kn9c-c2s2).  
* _Chicago_Crime_Data.csv_ reflects reported incidents of crime (with the exception of murders where data exists for each victim) that occurred in the City of Chicago from 2001 to present, minus the most recent seven days. For more detailed information, see the [data description](https://data.cityofchicago.org/Public-Safety/Crimes-2001-to-present/ijzp-q8t2).  
* _Chicago_Public_Schools.csv_ shows all school level performance data used to create CPS School Report Cards for the 2011-2012 school year. For more detailed information, see the [data description](https://data.cityofchicago.org/Education/Chicago-Public-Schools-Progress-Report-Cards-2011-/9xs2-f89t).  
* _Final_course_assignment.ipynb_ contains the script with ipython-sql code, which is used to query the datasets after they were loaded into a Db2 database on IBM Cloud.

