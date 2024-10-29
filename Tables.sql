

-- People Table
CREATE TABLE Celebrities (
    Person_ID INT PRIMARY KEY AUTO_INCREMENT,
    Full_Name VARCHAR(255) NOT NULL,
    Profession ENUM('Actor', 'Singer', 'Both') NOT NULL,
    Years_Active INT,
    Gender varchar(100)
);

CREATE TABLE Regions (
    Region_ID INT AUTO_INCREMENT PRIMARY KEY,
    Region_Name VARCHAR(100)
);

-- People_Regions Table
CREATE TABLE Celeb_Regions (
    People_region_ID INT PRIMARY KEY AUTO_INCREMENT,
    Person_ID INT,
    Region_Name VARCHAR(255) NOT NULL,
    Region_ID INT,
    FOREIGN KEY (Person_ID) REFERENCES Celebrities(Person_ID),
	FOREIGN KEY (Region_ID) REFERENCES regions(Region_ID)
);


-- Success Table
CREATE TABLE Success (
    Success_ID INT PRIMARY KEY AUTO_INCREMENT,
    Person_ID INT,
    Total_Awards INT,
    Award_Score DECIMAL(5, 2),
    Revenue_Generated DECIMAL(15, 2),
    FOREIGN KEY (Person_ID) REFERENCES Celebrities(Person_ID)
);


 -- Movies Table
CREATE TABLE Movies (
    Movie_ID INT PRIMARY KEY AUTO_INCREMENT,
    Title VARCHAR(255) NOT NULL,
    Release_Year INT,
    Lead_Actor_ID INT,
    FOREIGN KEY (Lead_Actor_ID) REFERENCES Celebrities(Person_ID)
);


-- Songs Table
CREATE TABLE Songs (
    Song_ID INT PRIMARY KEY AUTO_INCREMENT,
    Title VARCHAR(255) NOT NULL,
    Release_Year INT,
    Lead_Singer_ID INT,
    FOREIGN KEY (Lead_Singer_ID) REFERENCES Celebrities(Person_ID)
);

-- Revenue Table
CREATE TABLE Revenue (
    Revenue_ID INT PRIMARY KEY AUTO_INCREMENT,
    Entity_Type ENUM('Movie', 'Song') NOT NULL,
    Entity_ID INT NOT NULL,  -- Foreign key to either Movies or Songs table
    Revenue_Year INT,
    Revenue_Amount DECIMAL(15, 2),
    FOREIGN KEY (Entity_ID) REFERENCES Movies(Movie_ID)
        ON DELETE CASCADE ON UPDATE CASCADE
        -- When Entity_Type = 'Movie'
);

-- Awards Table
CREATE TABLE Awards (
    Award_ID INT PRIMARY KEY AUTO_INCREMENT,
    Award_Name VARCHAR(255),
    Year_Awarded INT,
    Person_ID INT,
    FOREIGN KEY (Person_ID) REFERENCES Celebrities(Person_ID)
);




