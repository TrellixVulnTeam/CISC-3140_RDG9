.mode csv
.import data_lab1/data.csv data
CREATE TABLE Cars(Car_ID INT PRIMARY KEY, Year INT, Model TEXT, Make TEXT);

INSERT INTO Cars(Car_ID, Year, Model, Make)
SELECT Car_ID, Year, Model, Make FROM data
Group by Car_ID;
-- Create Table Judges
CREATE TABLE Judges(Judge_ID INT, Judge_Name TEXT, judge_today INT, Began Datetime, ENDED Datetime, duration INT, Average INT);
INSERT INTO Judges(Judge_ID, Judge_Name)
SELECT Judge_ID, Judge_Name
FROM data
Group by Judge_ID;