CREATE TABLE spotify_merged AS
SELECT
    t1.*,
    t2.track_duration_ms
FROM table1 t1
LEFT JOIN table2 t2
ON t1.track_id = t2.track_id;

SELECT COUNT(*) FROM spotify_merged;

SELECT
    MIN(track_popularity) AS min_popularity,
    MAX(track_popularity) AS max_popularity,
    AVG(track_popularity) AS avg_popularity
FROM spotify_merged;

SELECT
    explicit,
    COUNT(*) AS total_tracks,
    AVG(track_popularity) AS avg_popularity
FROM spotify_merged
GROUP BY explicit;

SELECT
    release_year,
    COUNT(*) AS total_tracks
FROM spotify_merged
GROUP BY release_year
ORDER BY release_year;

SELECT
    track_name,
    artist_name,
    track_popularity
FROM spotify_merged
ORDER BY track_popularity DESC
LIMIT 10;

SELECT
    artist_name,
    MAX(artist_followers) AS followers
FROM spotify_merged
GROUP BY artist_name
ORDER BY followers DESC
LIMIT 10;

SELECT
    artist_genres,
    COUNT(*) AS total_tracks,
    AVG(track_popularity) AS avg_popularity
FROM spotify_merged
GROUP BY artist_genres
ORDER BY avg_popularity DESC
LIMIT 10;

SELECT
    album_type,
    COUNT(*) AS total_tracks,
    AVG(track_popularity) AS avg_popularity
FROM spotify_merged
GROUP BY album_type;

SELECT
    CASE
        WHEN track_duration_min < 3 THEN 'Short'
        WHEN track_duration_min BETWEEN 3 AND 5 THEN 'Medium'
        ELSE 'Long'
    END AS duration_category,
    COUNT(*) AS total_tracks,
    AVG(track_popularity) AS avg_popularity
FROM spotify_merged
GROUP BY duration_category;

SELECT
    album_total_tracks,
    COUNT(*) AS total_songs,
    AVG(track_popularity) AS avg_popularity
FROM spotify_merged
GROUP BY album_total_tracks
ORDER BY album_total_tracks;

SELECT
    track_name,
    artist_name,
    track_duration_min,
    track_popularity
FROM spotify_merged
ORDER BY track_duration_min DESC
LIMIT 10;






