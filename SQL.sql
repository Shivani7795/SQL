CREATE DATABASE Player_details;
USE Player_details;
CREATE TABLE Cricket_info (Match_ID int,Team1 varchar(50),Team2 varchar(50),
Match_Date varchar(20),Venue varchar(100),Umpire1 varchar(50),Umpire2 varchar(50),Match_Type varchar(20),
Toss_Winner varchar(50),Result varchar(100));

INSERT INTO Cricket_info VALUES
(1, 'India', 'Australia', '2025-01-15', 'Mumbai', 'John Doe', 'Jane Smith', 'ODI', 'India', 'India won by 5 wickets'),
(2, 'England', 'Pakistan', '2025-01-20', 'Lords', 'Alex Brown', 'Chris Green', 'Test', 'Pakistan', 'Match Drawn'),
(3, 'South Africa', 'India', '2025-01-25', 'Cape Town', 'Peter Wilson', 'Linda White', 'T20', 'India', 'India won by 20 runs'),
(4, 'Australia', 'New Zealand', '2025-02-05', 'Melbourne', 'Jack Davis', 'Sophia Taylor', 'ODI', 'Australia', 'Australia won by 3 wickets'),
(5, 'Pakistan', 'India', '2025-02-12', 'Karachi', 'Liam Johnson', 'Emily Clark', 'T20', 'India', 'India won by 7 wickets'),
(6, 'England', 'Australia', '2025-02-18', 'Sydney', 'James King', 'Sophia Lopez', 'Test', 'Australia', 'England won by 2 runs'),
(7, 'Bangladesh', 'Sri Lanka', '2025-02-25', 'Dhaka', 'Michael Moore', 'Emma Young', 'T20', 'Sri Lanka', 'Bangladesh won by 5 runs'),
(8, 'West Indies', 'India', '2025-03-03', 'Bridgetown', 'Oliver Hall', 'Charlotte Lewis', 'ODI', 'West Indies', 'India won by 8 wickets'),
(9, 'New Zealand', 'Pakistan', '2025-03-10', 'Wellington', 'Jacob Allen', 'Victoria Martin', 'ODI', 'New Zealand', 'Pakistan won by 4 wickets'),
(10, 'South Africa', 'England', '2025-03-15', 'Johannesburg', 'Henry Scott', 'Isabella Adams', 'T20', 'South Africa', 'South Africa won by 3 wickets'),
(11, 'India', 'Sri Lanka', '2025-03-20', 'Delhi', 'Daniel Wright', 'Amelia Baker', 'Test', 'Sri Lanka', 'India won by an innings'),
(12, 'Pakistan', 'West Indies', '2025-03-25', 'Lahore', 'Ethan Turner', 'Mia Perez', 'T20', 'West Indies', 'West Indies won by 15 runs'),
(13, 'Australia', 'Bangladesh', '2025-03-28', 'Canberra', 'Caleb Hughes', 'Harper Price', 'ODI', 'Australia', 'Australia won by 10 runs'),
(14, 'England', 'Sri Lanka', '2025-03-30', 'Leeds', 'Benjamin Hayes', 'Ava Bell', 'Test', 'England', 'Sri Lanka won by 1 wicket'),
(15, 'India', 'New Zealand', '2025-04-02', 'Hyderabad', 'Nathan Reed', 'Layla Flores', 'T20', 'India', 'India won by 6 runs');

select * from Cricket_info;

CREATE TABLE Player_info(Player_ID int,Player_Name varchar(50),Team varchar(50),Role varchar(30),
Matches_Played int,Runs_Scored int,Wickets_Taken int,Best_Performance varchar(100),Average float,
Strike_Rate float);

INSERT INTO Player_info VALUES(1, 'Virat Kohli', 'India', 'Batsman', 265, 12300, 0, '183 vs Pakistan', 58.1, 93.2),
(2, 'Steve Smith', 'Australia', 'Batsman', 240, 9500, 10, '164* vs England', 52.5, 89.4),
(3, 'Jasprit Bumrah', 'India', 'Bowler', 155, 200, 15, '6/19 vs England', 22.7, 4.5),
(4, 'Joe Root', 'England', 'Batsman', 275, 10500, 25, '150 vs India', 51.2, 86.3),
(5, 'Babar Azam', 'Pakistan', 'Batsman', 180, 8200, 5, '158 vs South Africa', 54.3, 91.1),
(6, 'Trent Boult', 'New Zealand', 'Bowler', 170, 500, 220, '7/34 vs Australia', 24.6, 4.7),
(7, 'Kane Williamson', 'New Zealand', 'Batsman', 220, 7200, 0, '200* vs Pakistan', 48.7, 82.4),
(8, 'David Warner', 'Australia', 'Batsman', 245, 9700, 0, '173 vs South Africa', 44.8, 95.7),
(9, 'Ben Stokes', 'England', 'All-Rounder', 210, 4600, 120, '135* vs Australia', 39.4, 87.5),
(10, 'Shaheen Afridi', 'Pakistan', 'Bowler', 110, 150, 160, '6/35 vs Sri Lanka', 20.4, 4.3),
(11, 'Lasith Malinga', 'Sri Lanka', 'Bowler', 220, 120, 330, '5/13 vs India', 23.1, 5.0),
(12, 'Andre Russell', 'West Indies', 'All-Rounder', 190, 2700, 170, '42* and 4/22 vs England', 30.3, 130.4),
(13, 'Shakib Al Hasan', 'Bangladesh', 'All-Rounder', 210, 6500, 270, '124* vs India', 38.6, 89.9),
(14, 'AB de Villiers', 'South Africa', 'Batsman', 230, 9500, 0, '162* vs West Indies', 54.2, 101.1),
(15, 'Chris Gayle', 'West Indies', 'Batsman', 300, 10400, 0, '215 vs Zimbabwe', 42.5, 115.6);


ALTER TABLE Cricket_info ADD Weather varchar(50);
ALTER TABLE Cricket_info ADD Audience_Count int;
ALTER TABLE Player_info ADD Nationality varchar(50);
ALTER TABLE Player_info ADD ranking int;

ALTER TABLE Cricket_info RENAME COLUMN Match_ID TO Game_ID;
ALTER TABLE Cricket_info RENAME COLUMN Match_Date TO Event_Date;
ALTER TABLE Cricket_info RENAME COLUMN Venue TO Venue;
ALTER TABLE Cricket_info RENAME COLUMN Result TO Outcome;

ALTER TABLE Player_info RENAME COLUMN Player_ID TO Athlete_ID;
ALTER TABLE Player_info RENAME COLUMN Team TO Squad;
ALTER TABLE Player_info RENAME COLUMN Best_Performance TO Highlight;
ALTER TABLE Player_info RENAME COLUMN Strike_Rate TO Efficiency;

UPDATE Cricket_info
SET Toss_Winner = 'Australia', Outcome = 'Australia won by 50 runs'
WHERE Team1 = 'Australia' AND Team2 = 'India';

UPDATE Cricket_info
SET Weather = 'Sunny'
WHERE Venue = 'Mumbai' OR Venue = 'Sydney';

UPDATE Cricket_info
SET Audience_Count = 35000
WHERE Match_Type IN ('T20', 'ODI');

UPDATE Cricket_info
SET Umpire1 = 'Jack Robinson'
WHERE Team1 NOT IN ('India', 'Pakistan');

UPDATE Cricket_info
SET Umpire2 = 'Sophia Hernandez'
WHERE Venue NOT IN ('Lords', 'Cape Town');

UPDATE Player_info
SET ranking = 1
WHERE Player_Name = 'Virat Kohli' AND Role = 'Batsman';

UPDATE Player_info
SET Nationality = 'Australian'
WHERE squad = 'Australia' OR squad = 'England';

UPDATE Player_info
SET Matches_Played = Matches_Played + 10
WHERE Role IN ('Bowler', 'All-Rounder');

UPDATE Player_info
SET Efficiency = Efficiency + 5.0
WHERE Player_Name NOT IN ('Chris Gayle', 'Shaheen Afridi');

UPDATE Player_info
SET Average = Average + 2.5
WHERE squad NOT IN ('Bangladesh', 'West Indies');

DELETE FROM Cricket_info WHERE Game_ID = 5;
DELETE FROM Cricket_info WHERE Venue = 'Karachi';
DELETE FROM Cricket_info WHERE Match_Type = 'Test' AND Weather = 'Rainy';

DELETE FROM Player_info WHERE Athlete_ID = 10;
DELETE FROM Player_info WHERE Role = 'Bowler';
DELETE FROM Player_info WHERE ranking = 5;

SELECT * FROM Cricket_info WHERE Match_Type = 'ODI';
SELECT * FROM Cricket_info WHERE Team1 = 'India' AND Team2 = 'Australia';
SELECT * FROM Cricket_info WHERE Venue IN ('Mumbai', 'Sydney', 'Cape Town');
SELECT * FROM Cricket_info WHERE Venue NOT IN ('Lords', 'Karachi');
SELECT * FROM Cricket_info WHERE Event_Date BETWEEN '2025-01-01' AND '2025-03-01';
SELECT * FROM Cricket_info WHERE Event_Date NOT BETWEEN '2025-01-01' AND '2025-03-01';
SELECT * FROM Cricket_info WHERE Venue LIKE '%Town%';
SELECT * FROM Cricket_info WHERE Venue NOT LIKE '%Town%';

SELECT * FROM Player_info WHERE Role = 'Batsman';
SELECT * FROM Player_info WHERE Role = 'All-Rounder' AND Efficiency > 90.0;
SELECT * FROM Player_info WHERE squad IN ('India', 'Australia', 'Pakistan');
SELECT * FROM Player_info WHERE squad NOT IN ('Bangladesh', 'Sri Lanka');
SELECT * FROM Player_info WHERE Average BETWEEN 40.0 AND 50.0;
SELECT * FROM Player_info WHERE Average NOT BETWEEN 40.0 AND 50.0;
SELECT * FROM Player_info WHERE Player_Name LIKE 'V%';
SELECT * FROM Player_info WHERE Player_Name NOT LIKE 'V%';

