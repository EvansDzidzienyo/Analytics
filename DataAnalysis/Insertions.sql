

INSERT INTO Celebrities (Full_Name, Profession, Years_Active,Gender) VALUES
('John Doe', 'Actor', 15, 'male'),
('Jane Smith', 'Singer', 10,'female'),
('Mark Johnson', 'Both', 12,'male'),
('Michael Brown', 'Actor', 20,'male'),
('Sarah Lee', 'Singer', 8,'female'),
('Tom Hardy', 'Actor', 18,'male'),
('Anna Martinez', 'Singer', 5,'female'),
('David Anderson', 'Both', 11,'male'),
('Sophia Taylor', 'Actor', 14,'female'),
('James Thomas', 'Singer', 9,'male'),
('Zendaya Coleman', 'Both', 13,'female'),
('Lucas Harris', 'Both', 22,'male'),
('Mason Clark', 'Singer', 17,'male'),
('Liam Lewis', 'Actor', 21,'male'),
('Charlotte Walker', 'Both', 16,'female');

INSERT INTO Regions (Region_Name)
VALUES
('America'),
('Europe'),
('Asia'),
('Oceania'),
('Africa');

INSERT INTO Celeb_Regions (Person_ID, Region_Name,Region_ID ) VALUES
(1,'America', 1),
(2, 'America', 1),
(3, 'Europe', 2),
(4,'Europe', 2),
(5,'Asia', 3),
(6,'America', 1),
(7,'America', 1),
(8,'America', 1),
(9,'America', 1),
(10,'America', 1),
(11,'Europe', 2),
(12,'Europe', 2),
(13,'Asia', 3),
(14,'America', 1),
(15,'America', 1);


INSERT INTO Success (Person_ID, Total_Awards, Award_Score, Revenue_Generated) VALUES
(1, 5, 4.5, 1000000),
(2, 3, 3.8, 800000),
(3, 7, 4.9, 1500000),
(4, 10, 5.0, 2000000),
(5, 2, 3.0, 500000),
(6, 6, 4.6, 1300000),
(7, 1, 2.0, 200000),
(8, 8, 4.8, 1700000),
(9, 4, 4.0, 900000),
(10, 3, 3.5, 750000),
(11, 9, 4.7, 1800000),
(12, 5, 4.5, 1100000),
(13, 7, 4.9, 1400000),
(14, 10, 5.0, 2200000),
(15, 3, 3.6, 700000);


INSERT INTO Movies (Title, Release_Year, Lead_Actor_ID) VALUES
('Action Star', 2020, 1),
('Comedy Night', 2019, 4),
('Thriller X', 2018, 6),
('Drama Life', 2021, 8),
('Heroic Moves', 2017, 12),
('Romantic Escape', 2015, 14),
('Supernova', 2022, 10),
('Detective Stories', 2016, 11),
('Sci-Fi Odyssey', 2019, 9),
('Legendary Tales', 2018, 5),
('Fantasy World', 2023, 7),
('Historic Drama', 2012, 15),
('Adventure Time', 2020, 3),
('Crime Scene', 2021, 13),
('Mysterious Journey', 2019, 2);

INSERT INTO Songs (Title, Release_Year, Lead_Singer_ID) VALUES
('Song of the Summer', 2020, 2),
('Melody Nights', 2019, 3),
('Rising Sun', 2018, 5),
('Funky Beats', 2021, 7),
('Love Anthem', 2017, 10),
('Rockstar', 2015, 12),
('Pop Sensation', 2022, 14),
('Classical Harmony', 2016, 15),
('Jazz Vibes', 2019, 11),
('Soulful Sounds', 2018, 13),
('Hip Hop Dreams', 2023, 9),
('Blues Traveler', 2012, 6),
('Country Roads', 2020, 8),
('Dance Party', 2021, 4),
('Epic Chorus', 2019, 1);


INSERT INTO Revenue (Entity_Type, Entity_ID, Revenue_Year, Revenue_Amount) VALUES
('Movie', 1, 2020, 5000000),
('Song', 2, 2020, 3000000),
('Movie', 3, 2019, 4000000),
('Song', 4, 2019, 2500000),
('Movie', 5, 2021, 6000000),
('Song', 6, 2022, 2000000),
('Movie', 7, 2020, 3500000),
('Song', 8, 2021, 4500000),
('Movie', 9, 2019, 5500000),
('Song', 10, 2018, 1500000),
('Movie', 11, 2023, 7000000),
('Song', 12, 2023, 5000000),
('Movie', 13, 2020, 4000000),
('Song', 14, 2021, 6000000),
('Movie', 15, 2019, 3500000);


INSERT INTO Awards (Award_Name, Year_Awarded, Person_ID) VALUES
('Best Actor', 2020, 1),
('Best Singer', 2020, 2),
('Best Actor', 2019, 4),
('Best Singer', 2019, 5),
('Best Actor', 2021, 8),
('Best Singer', 2022, 7),
('Best Actor', 2020, 12),
('Best Singer', 2021, 10),
('Best Actor', 2019, 11),
('Best Singer', 2018, 15),
('Best Actor', 2023, 14),
('Best Singer', 2022, 9),
('Best Actor', 2020, 13),
('Best Singer', 2021, 6),
('Best Actor', 2019, 3);


