--output top 3 car score from each make into extract2
.headers ON
.mode csv
.output extract2.csv
SELECT * 
FROM Ranking 
Where make like '%Honda%' order by Total desc limit 3;

SELECT * 
FROM Ranking 
Where make like '%Subaru%' order by Total desc limit 3;

SELECT * 
FROM Ranking 
Where make like '%Acura%' order by Total desc limit 3;

SELECT * 
FROM Ranking 
Where make like '%Lexus%' order by Total desc limit 3;

SELECT * 
FROM Ranking 
Where make like '%Ford%' order by Total desc limit 3;

SELECT * 
FROM Ranking 
Where make like '%Hyundai%' order by Total desc limit 3;

SELECT * 
FROM Ranking 
Where make like '%Infiniti%' order by Total desc limit 3;

SELECT * 
FROM Ranking 
Where make like '%Volkswagen%' order by Total desc limit 3;

SELECT * 
FROM Ranking 
Where make like '%Chevy%' order by Total desc limit 3;

SELECT * 
FROM Ranking 
Where make like '%Nissan%' order by Total desc limit 3;

SELECT * 
FROM Ranking 
Where make like '%Toyota%' order by Total desc limit 3;

SELECT * 
FROM Ranking 
Where make like '%Bmw%' order by Total desc limit 3;

SELECT * 
FROM Ranking 
Where make like '%Mitsu%' order by Total desc limit 3;

SELECT * 
FROM Ranking 
Where make like '%Dodge%' order by Total desc limit 3;

SELECT * 
FROM Ranking 
Where make like '%Mercedes%' order by Total desc limit 3;

SELECT * 
FROM Ranking 
Where make like '%Audi%' order by Total desc limit 3;

SELECT * 
FROM Ranking 
Where make like '%Mazda%' order by Total desc limit 3;

SELECT * 
FROM Ranking 
Where make like '%HScion%' order by Total desc limit 3;