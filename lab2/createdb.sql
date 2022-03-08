--Generates databse
-- Imports data.csv into table data
.mode csv
.import data_lab1/data.csv data
-- CREATE TABLE CAR
CREATE TABLE Cars(Car_ID INT PRIMARY KEY, Year INT, Model TEXT, Make TEXT);

INSERT INTO Cars(Car_ID, Year, Model, Make)
SELECT Car_ID, Year, Model, Make FROM DATA
Group by Car_ID;
-- Create Table Judges
CREATE TABLE Judges(Judge_ID INT, Judge_Name TEXT);
INSERT INTO Judges(Judge_ID, Judge_Name)
SELECT Judge_ID, Judge_Name
FROM data
Group by Judge_ID;
--Create Car_Score using Car_Overall score and Mods_Overall score
CREATE TABLE Car_Score(Car_ID INT PRIMARY KEY, Car_Overall INT, Mods_Overall INT);
INSERT INTO Car_Score(Car_ID,Car_Overall,Mods_Overall)
SELECT Car_ID, Car_Overall,Mods_Overall
FROM data 
Group by Car_ID;

--ADDS score of Car_Score and outputs in new table TOTAL
CREATE TABLE TOTAL(Car_ID INT PRIMARY KEY, Total INT);
INSERT INTO TOTAL(Car_ID, Total)
SELECT Car_ID, Sum(Car_Overall + Mods_Overall)
From Car_Score
Group by Car_ID;

CREATE TABLE Ranking AS SELECT
Cars.Car_ID, Cars.YEAR, Cars.Model, Cars.Make, TOTAL.total
FROM Cars, TOTAL
WHERE Cars.Car_ID = TOTAL.Car_ID;

