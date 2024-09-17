--These queries are on the aws redshift query editor v2 on console
--Create the table to import the data
CREATE TABLE coviddata (
    Date DATE,
    State VARCHAR(50),
    TotalSamples FLOAT8,
    Negative INT,
    Positive FLOAT8
);

CREATE TABLE students (
    id int PRIMARY KEY,
    name VARCHAR(50),
    age INT,
    email VARCHAR(50)
);

CREATE TABLE friends (
    id int PRIMARY KEY,
    name VARCHAR(50),
    age INT,
    email VARCHAR(50)
);

--Import data from s3 with copy
COPY coviddata
FROM 's3://pb.red.bucket/StatewiseTestingDetails.csv'
IAM_ROLE 'arn:aws:iam::559050226499:role/redfull'
CSV 
IGNOREHEADER 1;

--Import data from s3 with copy
COPY students
FROM 's3://pb.red.bucket/Delimited.csv'
IAM_ROLE 'arn:aws:iam::559050226499:role/redfull'
DELIMITER '|'
IGNOREHEADER 1;

--Import data from s3 with copy
COPY friends
FROM 's3://pb.red.bucket/Fixed-Width.txt'
IAM_ROLE 'arn:aws:iam::559050226499:role/redfull'
FIXEDWIDTH '5,10,2,20';

--Check the table content
SELECT * 
FROM coviddata

SELECT * 
FROM students

SELECT * 
FROM friends

--Analysis of the data
UPDATE coviddata
SET Negative = CASE WHEN Negative IS NULL THEN 0 ELSE Negative END,
    Positive = CASE WHEN Positive IS NULL THEN 0 ELSE Positive END;
    
SELECT 
    [State],
    SUM(TotalSamples) AS TotalSamples,
    SUM(CAST(Negative AS FLOAT)) AS Negative,
    SUM(Positive) AS Positive
FROM coviddata
GROUP BY [State]

--Delete the table
DROP TABLE students
DROP TABLE friends
DROP TABLE coviddata
