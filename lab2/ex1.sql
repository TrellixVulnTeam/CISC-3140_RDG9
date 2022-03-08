--OUTPUTS to extract1.csv 
.headers on 
.mode csv
.output extract1.csv
SELECT * FROM RANKING
ORDER BY Total DESC;