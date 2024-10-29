-- . Top Five Artist by Revenue
SELECT C.Full_Name, S.Revenue_Generated
FROM celebrities C
JOIN Success S ON C.Person_ID = S.Person_ID
ORDER BY S.Revenue_Generated DESC
LIMIT 5;

-- Least successful
SELECT C.Full_Name, S.Total_Awards, S.Award_Score, S.Revenue_Generated
FROM celebrities C
JOIN Success S ON C.Person_ID = S.Person_ID
ORDER BY S.Total_Awards ASC, S.Award_Score ASC, S.Revenue_Generated ASC
LIMIT 5;

-- Most gained Award points
SELECT C.Full_Name, Award_Score
FROM celebrities C
JOIN success S ON C.Person_ID = S.Person_ID
ORDER BY  Award_Score DESC
LIMIT 5;

-- Trend in movies and song releases
SELECT Release_Year, COUNT(Movie_ID) AS Movie_Count
FROM Movies
GROUP BY Release_Year
UNION
SELECT Release_Year, COUNT(Song_ID) AS Song_Count
FROM Songs
GROUP BY Release_Year
ORDER BY Release_Year;

-- Years active
SELECT Full_Name, Years_Active
FROM celebrities
ORDER BY Years_Active DESC ;

