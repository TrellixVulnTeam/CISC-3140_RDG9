--CREATE Start and END time for each judge
UPDATE Judges SET 
Began = (SELECT Min(data.Timestamp)),
Ended = (SELECT MAX(data.Timestamp))
FROM data
WHERE data.Judge_ID = Judges.Judge_ID AND Judges.Judge_ID = 'J01';

UPDATE Judges SET 
Began = (SELECT Min(data.Timestamp)),
Ended = (SELECT MAX(data.Timestamp)),
FROM data
WHERE data.Judge_ID = Judges.Judge_ID AND Judges.Judge_ID = 'J02';

UPDATE Judges SET 
Began = (SELECT Min(data.Timestamp)),
Ended = (SELECT MAX(data.Timestamp))
FROM data
WHERE data.Judge_ID = Judges.Judge_ID AND Judges.Judge_ID = 'J03';

UPDATE Judges SET 
Began = (SELECT Min(data.Timestamp)),
Ended = (SELECT MAX(data.Timestamp))
FROM data
WHERE data.Judge_ID = Judges.Judge_ID AND Judges.Judge_ID = 'J04';

UPDATE Judges SET 
Began = (SELECT Min(data.Timestamp)),
Ended = (SELECT MAX(data.Timestamp))
FROM data
WHERE data.Judge_ID = Judges.Judge_ID AND Judges.Judge_ID = 'J05';

UPDATE Judges SET 
Began = (SELECT Min(data.Timestamp)),
Ended = (SELECT MAX(data.Timestamp))
FROM data
WHERE data.Judge_ID = Judges.Judge_ID AND Judges.Judge_ID = 'J06';

UPDATE Judges SET 
Began = (SELECT Min(data.Timestamp)),
Ended = (SELECT MAX(data.Timestamp))
FROM data
WHERE data.Judge_ID = Judges.Judge_ID AND Judges.Judge_ID = 'J07';

UPDATE Judges SET 
Began = (SELECT Min(data.Timestamp)),
Ended = (SELECT MAX(data.Timestamp))
FROM data
WHERE data.Judge_ID = Judges.Judge_ID AND Judges.Judge_ID = 'J08';

UPDATE Judges SET 
Began = (SELECT Min(data.Timestamp)),
Ended = (SELECT MAX(data.Timestamp))
FROM data
WHERE data.Judge_ID = Judges.Judge_ID AND Judges.Judge_ID = 'J09';