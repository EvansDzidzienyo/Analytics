-- Top five artists by recorded revenue
SELECT C.Full_Name, S.Revenue_Generated
FROM Celebrities AS C
JOIN Success AS S ON C.Person_ID = S.Person_ID
ORDER BY S.Revenue_Generated DESC
LIMIT 5;

-- Five lowest-ranked records using the available success indicators
SELECT C.Full_Name, S.Total_Awards, S.Award_Score, S.Revenue_Generated
FROM Celebrities AS C
JOIN Success AS S ON C.Person_ID = S.Person_ID
ORDER BY S.Total_Awards ASC, S.Award_Score ASC, S.Revenue_Generated ASC
LIMIT 5;

-- Top five artists by award score
SELECT C.Full_Name, S.Award_Score
FROM Celebrities AS C
JOIN Success AS S ON C.Person_ID = S.Person_ID
ORDER BY S.Award_Score DESC
LIMIT 5;

-- Annual release counts, with a common result schema for both entity types
SELECT Release_Year, 'Movie' AS Release_Type, COUNT(*) AS Release_Count
FROM Movies
GROUP BY Release_Year
UNION ALL
SELECT Release_Year, 'Song' AS Release_Type, COUNT(*) AS Release_Count
FROM Songs
GROUP BY Release_Year
ORDER BY Release_Year, Release_Type;

-- Years active (longest first)
SELECT Full_Name, Years_Active
FROM Celebrities
ORDER BY Years_Active DESC;
