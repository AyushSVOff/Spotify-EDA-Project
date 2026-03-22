CREATE TABLE table1 (
    track_id VARCHAR(50),
    track_name VARCHAR(255),
    track_number INT,
    track_popularity INT,
    explicit BOOLEAN,

    artist_name VARCHAR(255),
    artist_popularity INT,
    artist_followers BIGINT,
    artist_genres TEXT,

    album_id VARCHAR(50),
    album_name VARCHAR(255),
    album_release_date DATE,
    album_total_tracks INT,
    album_type VARCHAR(50),

    track_duration_min FLOAT,
    release_year INT
);

CREATE TABLE table2 (
    track_id VARCHAR(50),
    track_name VARCHAR(255),
    track_number INT,
    track_popularity INT,
    track_duration_ms INT,
    explicit BOOLEAN,

    artist_name VARCHAR(255),
    artist_popularity FLOAT,
    artist_followers BIGINT,
    artist_genres TEXT,

    album_id VARCHAR(50),
    album_name VARCHAR(255),
    album_release_date DATE,
    album_total_tracks INT,
    album_type VARCHAR(50),

    release_year INT,
    track_duration_min FLOAT
);


LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/table.csv'
IGNORE
INTO TABLE table1
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

SELECT COUNT(*) FROM table1;

LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/table2.csv'
IGNORE
INTO TABLE table2
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

SELECT COUNT(*) FROM table2;

SELECT track_id, COUNT(*)
FROM table1
GROUP BY track_id
HAVING COUNT(*) > 1;



