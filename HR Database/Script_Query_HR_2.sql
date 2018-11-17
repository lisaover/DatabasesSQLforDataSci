{\rtf1\ansi\ansicpg1252\cocoartf1671
{\fonttbl\f0\fswiss\fcharset0 Helvetica;}
{\colortbl;\red255\green255\blue255;}
{\*\expandedcolortbl;;}
\margl1440\margr1440\vieww10800\viewh8400\viewkind0
\pard\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0

\f0\fs24 \cf0 ------------------------------------------------\
-- Week 2, Lab 2 Advanced Queries \
-- Join operations\
------------------------------------------------\
\
--Select the names and job start dates of all employees who work for the department number 5.\
SELECT E.F_NAME, E.L_NAME, JH.START_DATE\
FROM EMPLOYEES AS E\
INNER JOIN JOB_HISTORY AS JH ON E.EMP_ID=JH.EMPL_ID\
WHERE E.DEP_ID = 5;\
\
--Select the names, job start dates, and job titles of all employees who work for the \
--department number 5.\
SELECT E.F_NAME, E.L_NAME, JH.START_DATE, J.JOB_TITLE\
FROM EMPLOYEES AS E\
INNER JOIN JOB_HISTORY AS JH ON E.EMP_ID=JH.EMPL_ID\
INNER JOIN JOBS AS J ON JH.JOBS_ID = J.JOB_IDENT\
WHERE E.DEP_ID = 5;\
\
--Perform a Left Outer Join on the EMPLOYEES and DEPARTMENT tables and select employee id, \
--last name, department id and department name for all employees\
SELECT E.EMP_ID, E.L_NAME, E.DEP_ID, D.DEP_NAME\
FROM EMPLOYEES AS E\
LEFT OUTER JOIN DEPARTMENTS AS D ON E.DEP_ID = D.DEPT_ID_DEP;\
\
--Re-write the query for 2A to limit the result set to include only the rows for employees \
--born before 1980.\
SELECT E.EMP_ID, E.L_NAME, E.DEP_ID, D.DEP_NAME\
FROM EMPLOYEES AS E\
LEFT OUTER JOIN DEPARTMENTS AS D ON E.DEP_ID = D.DEPT_ID_DEP\
WHERE YEAR(E.B_DATE) < '1980';\
\
--Re-write the query for 2A to have the result set that includes all the employees but department \
--names for only the employees who were born before 1980.\
SELECT E.EMP_ID, E.L_NAME, E.DEP_ID, D.DEP_NAME\
FROM EMPLOYEES AS E\
LEFT OUTER JOIN DEPARTMENTS AS D ON E.DEP_ID = D.DEPT_ID_DEP AND YEAR(E.B_DATE) < '1980';\
\
--Perform a Full Join on the EMPLOYEES and DEPARTMENT tables and select the First name, Last name \
--and Department name of all employees.\
SELECT E.F_NAME, E.L_NAME, D.DEP_NAME\
FROM EMPLOYEES AS E\
FULL JOIN DEPARTMENTS AS D ON E.DEP_ID = D.DEPT_ID_DEP;\
\
--Re-write Query 3A to have the result set that includes all employee names but\
--department id and department names only for male employees.\
SELECT E.F_NAME, E.L_NAME, D.DEP_NAME\
FROM EMPLOYEES AS E\
FULL JOIN DEPARTMENTS AS D ON E.DEP_ID = D.DEPT_ID_DEP AND E.SEX = 'M';\
\
--End of Script_Query_HR_1.sql}