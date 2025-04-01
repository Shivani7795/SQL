CREATE DATABASE projects;
USE projects;
CREATE TABLE project_details(id int, name varchar(40),technology varchar(30),startDate int,endDate int);

CREATE DATABASE airlines;
USE airlines;
CREATE TABLE airlines_details(id int, src varchar(20),destination varchar(30),time int,no_passangers int);
CREATE TABLE passanger_details(id int ,name varchar(40),age int, weight bigint,nationality varchar(20));
CREATE TABLE airhostess_details(id int,name varchar(20),age int,weight bigint,nationality varchar(20));
CREATE TABLE pilot_details(id int,name varchar(20),age int,weight bigint,nationality varchar(20));
CREATE TABLE workers_details(id int,name varchar(20),dress_code varchar(20),age int,timing int);
ALTER TABLE airlines_details ADD COLUMN name varchar(20);
ALTER TABLE airlines_details ADD COLUMN no_luggage varchar(20);
ALTER TABLE airlines_details DROP COLUMN name ;
ALTER TABLE passanger_details RENAME passanger_name;
ALTER TABLE airhostess_details RENAME airhostess_name;
ALTER TABLE pilot_details RENAME pilot_name;
ALTER TABLE passanger_details MODIFY COLUMN age bigint;
ALTER TABLE airhostess_details MODIFY COLUMN age bigint;
ALTER TABLE pilot_details MODIFY COLUMN age bigint;

CREATE DATABASE hospital_info;
USE hospital_info;
CREATE TABLE hospital_details(id int, name varchar(20), year int,no_nurse int,place varchar(20));
INSERT INTO hospital_details values(1,'apollo',2000,50,'Bangalore');
INSERT INTO hospital_details VALUES (3, 'Manipal', 1953, 200, 'Bengaluru');
INSERT INTO hospital_details VALUES (4, 'Max', 2001, 150, 'Delhi');
INSERT INTO hospital_details VALUES (5, 'Narayana', 2000, 120, 'Kolkata');
INSERT INTO hospital_details VALUES (6, 'AIIMS', 1956, 300, 'Delhi');
INSERT INTO hospital_details VALUES (7, 'Care', 1997, 80, 'Hyderabad');
INSERT INTO hospital_details VALUES (8, 'Medanta', 2009, 250, 'Gurgaon');
INSERT INTO hospital_details VALUES (9, 'Ruby Hall', 1959, 90, 'Pune');
INSERT INTO hospital_details VALUES (10, 'KIMS', 1980, 110, 'Thiruvananthapuram');
INSERT INTO hospital_details VALUES (11, 'CMC', 1900, 180, 'Vellore');

CREATE DATABASE country_info;
USE country_info;
CREATE TABLE country_details(id int,name varchar(20),no_district int,no_neighborhood int,language varchar(10),no_states int);
INSERT INTO country_details VALUES(1,'india',788,6,'multiple',8);
INSERT INTO country_details VALUES (2, 'USA', 9834, 50, 'English', 10);
INSERT INTO country_details VALUES (3, 'China', 9597, 23, 'Mandarin', 9);
INSERT INTO country_details VALUES (4, 'Brazil', 8516, 26, 'Portuguese', 8);
INSERT INTO country_details VALUES (5, 'Russia', 17098, 85, 'Russian', 7);
INSERT INTO country_details VALUES (6, 'Australia', 7692, 6, 'English', 9);
INSERT INTO country_details VALUES (8, 'Germany', 357, 16, 'German', 8);
INSERT INTO country_details VALUES (9, 'Japan', 377, 47, 'Japanese', 9);
INSERT INTO country_details VALUES (10, 'France', 551, 18, 'French', 8);
INSERT INTO country_details VALUES (11, 'UK', 243, 4, 'English', 9);
INSERT INTO country_details VALUES (12, 'South Africa', 1221, 9, 'Multiple', 7);
INSERT INTO country_details VALUES (13, 'Argentina', 2780, 23, 'Spanish', 8);
INSERT INTO country_details VALUES (14, 'India', 3287, 28, 'Multiple', 8);
INSERT INTO country_details VALUES (15, 'Italy', 301, 20, 'Italian', 8);
INSERT INTO country_details VALUES (16, 'Mexico', 1964, 32, 'Spanish', 7);
INSERT INTO country_details VALUES (17, 'Saudi Arabia', 2149, 13, 'Arabic', 8);
SELECT * from country_details;

CREATE DATABASE states_info;
USE states_info;
CREATE table states_details(id int,name varchar(20),no_districts int,neighborhood_states int,population int,language varchar(20));
ALTER TABLE states_details MODIFY COLUMN population varchar(20);
SELECT * from states_details;
INSERT INTO states_details values(1,'karnataka',31,5,'611647','kannada');
INSERT INTO states_details values(2,'maharashtra',36,6,'112374','marathi');
INSERT INTO states_details values(3,'tamil nadu',32,6,'721470','tamil');
INSERT INTO states_details values(4,'uttar pradesh',75,8,'204200','hindi');
INSERT INTO states_details values(5,'rajasthan',33,7,'342239','hindi');
INSERT INTO states_details values(6,'kerala',14,6,'384650','malayalam');
INSERT INTO states_details values(7,'gujarat',33,6,'604396','gujarati');
INSERT INTO states_details values(8,'west bengal',23,6,'913477','bengali');
INSERT INTO states_details values(9,'andhra pradesh',26,7,'160205','telugu');
INSERT INTO states_details values(10,'bihar',38,6,'187945','hindi');
INSERT INTO states_details values(11,'punjab',22,6,'503483','punjabi');
INSERT INTO states_details values(12,'odisha',30,6,'155707','odia');
INSERT INTO states_details values(13,'madhya pradesh',50,7,'308350','hindi');
INSERT INTO states_details values(14,'haryana',22,6,'104005','hindi');
INSERT INTO states_details values(15,'assam',34,6,'312055','assamese');
INSERT INTO states_details values(16,'jharkhand',24,6,'173750','hindi');


SELECT * from states_details where no_districts not between 30 and 40;
SELECT * from states_details where no_districts between 30 and 40;
SELECT * from states_details where name like '%a%a';
UPDATE states_details set population = '112375' where id = 2;
DELETE from states_details where id = 16;
select * from states_details where no_districts=30 or language='hindi';
select * from states_details where no_districts=31 and language='kannada';
select * from states_details where no_districts in(31,32,33);

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




CREATE DATABASE Football_details;
USE Football_details;
CREATE TABLE Football_matches (
    Match_ID INT,
    Team1 VARCHAR(50),
    Team2 VARCHAR(50),
    Match_Date VARCHAR(20),
    Venue VARCHAR(100),
    Referee1 VARCHAR(50),
    Referee2 VARCHAR(50),
    Match_Type VARCHAR(20),
    Toss_Winner VARCHAR(50),
    Result VARCHAR(100)
);

INSERT INTO Football_matches VALUES
(1, 'Brazil', 'Argentina', '2025-01-15', 'Rio de Janeiro', 'John Doe', 'Jane Smith', 'Friendly', 'Brazil', 'Brazil won 2-1'),
(2, 'France', 'Germany', '2025-01-20', 'Paris', 'Alex Brown', 'Chris Green', 'World Cup', 'France', 'Match Drawn'),
(3, 'Spain', 'Italy', '2025-01-25', 'Madrid', 'Peter Wilson', 'Linda White', 'Friendly', 'Italy', 'Spain won 3-2'),
(4, 'England', 'Netherlands', '2025-02-05', 'London', 'Jack Davis', 'Sophia Taylor', 'Qualifier', 'England', 'England won 1-0'),
(5, 'Portugal', 'Brazil', '2025-02-12', 'Lisbon', 'Liam Johnson', 'Emily Clark', 'Friendly', 'Portugal', 'Brazil won 3-1'),
(6, 'Argentina', 'Uruguay', '2025-02-18', 'Buenos Aires', 'James King', 'Sophia Lopez', 'Qualifier', 'Uruguay', 'Argentina won 2-0'),
(7, 'Germany', 'England', '2025-02-25', 'Berlin', 'Michael Moore', 'Emma Young', 'Qualifier', 'Germany', 'Germany won 4-3'),
(8, 'France', 'Italy', '2025-03-03', 'Rome', 'Oliver Hall', 'Charlotte Lewis', 'Friendly', 'France', 'France won 2-0'),
(9, 'Netherlands', 'Belgium', '2025-03-10', 'Amsterdam', 'Jacob Allen', 'Victoria Martin', 'Qualifier', 'Belgium', 'Netherlands won 3-2'),
(10, 'Spain', 'Portugal', '2025-03-15', 'Barcelona', 'Henry Scott', 'Isabella Adams', 'Qualifier', 'Portugal', 'Spain won 2-1'),
(11, 'Argentina', 'Brazil', '2025-03-20', 'Rio de Janeiro', 'Daniel Wright', 'Amelia Baker', 'World Cup', 'Argentina', 'Brazil won 2-0'),
(12, 'England', 'France', '2025-03-25', 'London', 'Ethan Turner', 'Mia Perez', 'Qualifier', 'France', 'France won 1-0'),
(13, 'Italy', 'Germany', '2025-03-28', 'Milan', 'Caleb Hughes', 'Harper Price', 'Qualifier', 'Germany', 'Germany won 3-1'),
(14, 'Portugal', 'Belgium', '2025-03-30', 'Brussels', 'Benjamin Hayes', 'Ava Bell', 'Friendly', 'Belgium', 'Portugal won 3-2'),
(15, 'Spain', 'Netherlands', '2025-04-02', 'Seville', 'Nathan Reed', 'Layla Flores', 'Friendly', 'Spain', 'Spain won 1-0');

CREATE TABLE Player_info (
    Player_ID INT,
    Player_Name VARCHAR(50),
    Team VARCHAR(50),
    Position VARCHAR(30),
    Matches_Played INT,
    Goals_Scored INT,
    Assists INT,
    Best_Performance VARCHAR(100),
    Average_Rating FLOAT,
    Efficiency FLOAT
);

INSERT INTO Player_info VALUES
(1, 'Lionel Messi', 'Argentina', 'Forward', 150, 90, 50, 'Hat-trick vs Brazil', 9.5, 92.1),
(2, 'Cristiano Ronaldo', 'Portugal', 'Forward', 180, 100, 40, '4 goals vs Spain', 9.6, 94.2),
(3, 'Neymar Jr.', 'Brazil', 'Forward', 140, 85, 35, '3 goals and 2 assists vs Argentina', 9.3, 90.7),
(4, 'Kylian Mbappé', 'France', 'Forward', 120, 75, 30, 'Hat-trick vs Germany', 9.4, 93.1),
(5, 'Harry Kane', 'England', 'Striker', 110, 70, 25, '5 goals vs Netherlands', 9.2, 88.9),
(6, 'Kevin De Bruyne', 'Belgium', 'Midfielder', 140, 50, 70, '3 assists vs Germany', 9.1, 87.5),
(7, 'Virgil van Dijk', 'Netherlands', 'Defender', 130, 10, 5, 'Clean sheet vs Spain', 9.0, 85.3),
(8, 'Manuel Neuer', 'Germany', 'Goalkeeper', 150, 0, 1, '10 saves vs France', 9.8, 95.0),
(9, 'Sergio Ramos', 'Spain', 'Defender', 140, 20, 10, 'Penalty goal vs Italy', 9.2, 89.4),
(10, 'Paulo Dybala', 'Argentina', 'Midfielder', 100, 30, 20, '2 goals vs Uruguay', 8.9, 84.2),
(11, 'Romelu Lukaku', 'Belgium', 'Striker', 125, 60, 15, '4 goals vs Portugal', 9.3, 91.8),
(12, 'Karim Benzema', 'France', 'Striker', 140, 65, 20, 'Hat-trick vs England', 9.0, 90.5),
(13, 'Alisson Becker', 'Brazil', 'Goalkeeper', 130, 0, 0, '5 clean sheets in World Cup', 9.4, 89.9),
(14, 'Gerard Piqué', 'Spain', 'Defender', 145, 5, 5, 'Header goal vs Portugal', 8.7, 86.7),
(15, 'Eden Hazard', 'Belgium', 'Midfielder', 110, 35, 30, '2 goals and 3 assists vs Netherlands', 9.1, 88.8);

ALTER TABLE Football_matches ADD Weather VARCHAR(50);
ALTER TABLE Football_matches ADD Audience_Count INT;
ALTER TABLE Player_info ADD Nationality VARCHAR(50);
ALTER TABLE Player_info ADD ranking INT;

ALTER TABLE Football_matches RENAME COLUMN Match_ID TO Game_ID;
ALTER TABLE Football_matches RENAME COLUMN Match_Date TO Event_Date;
ALTER TABLE Football_matches RENAME COLUMN Venue TO Location;
ALTER TABLE Football_matches RENAME COLUMN Result TO Outcome;

ALTER TABLE Player_info RENAME COLUMN Player_ID TO Athlete_ID;
ALTER TABLE Player_info RENAME COLUMN Team TO Squad;
ALTER TABLE Player_info RENAME COLUMN Best_Performance TO Highlight;
ALTER TABLE Player_info RENAME COLUMN Efficiency TO Strike_Rate ;

UPDATE Football_matches
SET Toss_Winner = 'Brazil', Outcome = 'Brazil won 3-1'
WHERE Team1 = 'Brazil' AND Team2 = 'Argentina';

UPDATE Football_matches
SET Weather = 'Sunny'
WHERE Location = 'Rio de Janeiro' OR Location = 'Paris';

UPDATE Football_matches
SET Audience_Count = 50000
WHERE Match_Type IN ('World Cup', 'Qualifier');

UPDATE Football_matches
SET Referee1 = 'Jack Robinson'
WHERE Team1 NOT IN ('Argentina', 'Portugal');

UPDATE Football_matches
SET Referee2 = 'Sophia Hernandez'
WHERE Location NOT IN ('Paris', 'Madrid');

UPDATE Player_info
SET ranking = 1
WHERE Player_Name = 'Lionel Messi' AND Position = 'Forward';

UPDATE Player_info
SET Nationality = 'French'
WHERE Squad = 'France' OR Squad = 'Germany';

UPDATE Player_info
SET Matches_Played = Matches_Played + 10
WHERE Position IN ('Midfielder', 'Defender');

UPDATE Player_info
SET Strike_Rate = Strike_Rate + 5.0
WHERE Player_Name NOT IN ('Cristiano Ronaldo', 'Neymar Jr.');

UPDATE Player_info
SET Average_Rating = Average_Rating + 1.5
WHERE Squad NOT IN ('Belgium', 'Netherlands');

DELETE FROM Football_matches WHERE Game_ID = 5;
DELETE FROM Football_matches WHERE Location = 'Lisbon';
DELETE FROM Football_matches WHERE Match_Type = 'Qualifier' AND Weather = 'Rainy';
DELETE FROM Player_info WHERE Athlete_ID = 8;
DELETE FROM Player_info WHERE Position = 'Goalkeeper';
DELETE FROM Player_info WHERE ranking = 5;

SELECT * FROM Football_matches WHERE Match_Type = 'World Cup';
SELECT * FROM Football_matches WHERE Team1 = 'Argentina' AND Team2 = 'Brazil';
SELECT * FROM Football_matches WHERE Location IN ('Rio de Janeiro', 'Paris', 'Madrid');
SELECT * FROM Football_matches WHERE Location NOT IN ('Paris', 'Lisbon');
SELECT * FROM Football_matches WHERE Event_Date BETWEEN '2025-01-01' AND '2025-03-01';
SELECT * FROM Football_matches WHERE Event_Date NOT BETWEEN '2025-01-01' AND '2025-03-01';
SELECT * FROM Football_matches WHERE Location LIKE '%de Janeiro%';
SELECT * FROM Football_matches WHERE Location NOT LIKE '%de Janeiro%';

SELECT * FROM Player_info WHERE Position = 'Forward';
SELECT * FROM Player_info WHERE Position = 'Midfielder' AND Strike_Rate > 90.0;
SELECT * FROM Player_info WHERE Squad IN ('Brazil', 'Argentina', 'France');
SELECT * FROM Player_info WHERE Squad NOT IN ('Belgium', 'Germany');
SELECT * FROM Player_info WHERE Average_Rating BETWEEN 40.0 AND 50.0;
SELECT * FROM Player_info WHERE Average_Rating NOT BETWEEN 40.0 AND 50.0;
SELECT * FROM Player_info WHERE Player_Name LIKE 'L%';
SELECT * FROM Player_info WHERE Player_Name NOT LIKE 'L%';









