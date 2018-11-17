{\rtf1\ansi\ansicpg1252\cocoartf1671
{\fonttbl\f0\fswiss\fcharset0 Helvetica;}
{\colortbl;\red255\green255\blue255;}
{\*\expandedcolortbl;;}
\margl1440\margr1440\vieww10800\viewh8400\viewkind0
\pard\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0

\f0\fs24 \cf0 ----------------------------------------------------------------------------------------\
-- Week 2, Lab 1 Advanced Queries \
-- LIKE, BETWEEN, ORDER BY, GROUP BY, HAVING operations\
----------------------------------------------------------------------------------------\
\
--Retrieve all employees whose address is in Elgin, IL\
SELECT * FROM EMPLOYEES\
WHERE ADDRESS LIKE 'Elgin, IL';\
\
--Retrieve all employees who were born during the 1970s\
SELECT * FROM EMPLOYEES\
WHERE B_DATE LIKE '197_-__-__';\
\
--Retrieve all employees in department 5 whose salary is between 60000 and 70000\
SELECT * FROM EMPLOYEES\
WHERE DEP_ID=5 AND SALARY BETWEEN 60000 AND 70000;\
\
--Retrieve a list of employees ordered by department ID\
SELECT F_NAME, L_NAME, DEP_ID FROM EMPLOYEES\
ORDER BY DEP_ID;\
\
--Retrieve a list of employees ordered in descending order by department ID\
--and, within each department, ordered alphabetically in descending order by last name\
SELECT F_NAME, L_NAME, DEP_ID FROM EMPLOYEES\
ORDER BY DEP_ID DESC, L_NAME DESC;\
\
--For each department ID, retrieve the number of employees in the department\
SELECT DEP_ID, count(*) AS EMP_COUNT FROM EMPLOYEES\
GROUP BY DEP_ID;\
\
--For each department, retrieve the number of employees in the department,\
--and the average employee salary in the department\
SELECT DEP_ID, count(*) AS NUM_EMPLOYEES, CAST(ROUND(AVG(SALARY), 0) AS INT) AS AVG_SALARY FROM EMPLOYEES\
GROUP BY DEP_ID;\
\
--For each department, retrieve the number of employees in the department,\
--and the average employee salary in the department, then order by average salary\
SELECT DEP_ID, count(*) AS NUM_EMPLOYEES, CAST(ROUND(AVG(SALARY), 0) AS INT) AS AVG_SALARY FROM EMPLOYEES\
GROUP BY DEP_ID\
ORDER BY AVG_SALARY;\
\
--For each department, retrieve the number of employees in the department,\
--and the average employee salary in the department, then order by average salary,\
--finally, limit the results to departments with fewer than 4 employees\
SELECT DEP_ID, count(*) AS NUM_EMPLOYEES, CAST(ROUND(AVG(SALARY), 0) AS INT) AS AVG_SALARY FROM EMPLOYEES\
GROUP BY DEP_ID\
HAVING COUNT(*) < 4\
ORDER BY AVG_SALARY;\
\
--Retrieve a list of employees ordered in descending order by department name\
--and, within each department, ordered alphabetically in descending order by last name\
SELECT E.F_NAME, E.L_NAME, D.DEP_NAME\
FROM EMPLOYEES AS E, DEPARTMENTS AS D\
WHERE E.DEP_ID = D.DEPT_ID_DEP\
ORDER BY D.DEPT_ID_DEP DESC, E.L_NAME DESC;\
\
--End of Script_Query_HR_1.sql}