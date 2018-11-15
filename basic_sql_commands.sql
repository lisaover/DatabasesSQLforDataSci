{\rtf1\ansi\ansicpg1252\cocoartf1671
{\fonttbl\f0\fswiss\fcharset0 Helvetica;}
{\colortbl;\red255\green255\blue255;}
{\*\expandedcolortbl;;}
\margl1440\margr1440\vieww10800\viewh8400\viewkind0
\pard\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0

\f0\fs24 \cf0 --Drop table Instructor\
DROP TABLE Instructor;\
\
--Create table Instructor\
CREATE TABLE Instructor (\
	ins_id int NOT NULL PRIMARY KEY,\
	lastname varchar(25),\
	firstname varchar(25),\
	city varchar(25),\
	country char(2)\
);\
\
--Insert row\
INSERT INTO Instructor (ins_id, lastname, firstname, city, country)\
VALUES (1, 'Ahuja', 'Rav', 'Toronto', 'CA');\
\
--Insert two rows\
INSERT INTO Instructor (ins_id, lastname, firstname, city, country)\
VALUES (2, 'Chong', 'Raul', 'Toronto', 'CA'),\
		(3, 'Vasudevan', 'Hima', 'Chicago', 'US');\
\
--Select all rows from Instructor		\
SELECT * FROM Instructor;\
\
--Select only firstname, lastname, and country from Instructor where city is equal to 'Toronto'\
SELECT firstname, lastname, country FROM Instructor\
WHERE city='Toronto';\
\
--Update Instructor for Rav Ahuja - change city to Markham\
UPDATE Instructor\
SET city='Markham'\
WHERE lastname='Ahuja' AND firstname='Rav';\
\
--Delete row from Instructor - Raul Chong\
DELETE FROM Instructor\
WHERE lastname='Chong' AND firstname='Raul';\
\
--Select all rows from Instructor\
SELECT * FROM Instructor;\
\
--End of create-tables.sql}