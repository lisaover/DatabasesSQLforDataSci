# DatabasesSQLforDataSci
Databases and SQL for Data Science by IBM on Coursera

The hands-on labs for this course uses the IBM Cloud environment for working with a relational database. The database is created and accessed with IBM Db2 from the web browser.

## sql_functions_pet_sale.ipynb
This script creates and populates a pet sale table in the Db2 IBM Cloud database and queries the table with built-in functions including AVG, SUM, MAX, ROUND, COUNT, LENGTH, LCASE, UCASE, DISTINCT, CAST, DAY, MONTH, and CURRENT DATE.

## basic_sql_commands.sql  
This script contains basic sql commands for dropping tables, creating tables (with a primary key), inserting data into tables, and updating tables in the Db2 IBM Cloud database.

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
