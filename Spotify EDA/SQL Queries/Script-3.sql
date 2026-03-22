SELECT
    artist_genres,
    COUNT(*) AS total_tracks
FROM spotify_merged
GROUP BY artist_genres
ORDER BY total_tracks DESC
LIMIT 10;

SELECT
    explicit,
    COUNT(*) AS total_tracks,
    ROUND(
        COUNT(*) * 100.0 /
        (SELECT COUNT(*) FROM spotify_merged),
        2
    ) AS percentage_share
FROM spotify_merged
GROUP BY explicit;

SELECT
    release_year,
    AVG(track_duration_min) AS avg_duration
FROM spotify_merged
GROUP BY release_year
ORDER BY release_year;

SELECT
    artist_name,
    COUNT(*) AS total_tracks,
    AVG(track_popularity) AS avg_popularity
FROM spotify_merged
GROUP BY artist_name
ORDER BY total_tracks DESC
LIMIT 10;

SELECT
    artist_genres,
    AVG(artist_followers) AS avg_followers,
    COUNT(*) AS total_tracks
FROM spotify_merged
GROUP BY artist_genres
ORDER BY avg_followers DESC
LIMIT 10;

SELECT
    release_year,
    AVG(track_popularity) AS avg_popularity,
    COUNT(*) AS total_tracks
FROM spotify_merged
GROUP BY release_year
ORDER BY avg_popularity DESC
LIMIT 10;

SELECT
    artist_name,
    AVG(track_popularity) AS avg_popularity,
    COUNT(*) AS total_tracks
FROM spotify_merged
GROUP BY artist_name
HAVING total_tracks >= 3
ORDER BY avg_popularity DESC
LIMIT 10;

SELECT
    release_year,
    COUNT(*) AS total_tracks,
    AVG(track_popularity) AS avg_popularity
FROM spotify_merged
GROUP BY release_year
ORDER BY release_year;

SELECT
    CASE
        WHEN track_popularity < 20 THEN '0–20'
        WHEN track_popularity < 40 THEN '21–40'
        WHEN track_popularity < 60 THEN '41–60'
        WHEN track_popularity < 80 THEN '61–80'
        ELSE '81–100'
    END AS popularity_range,
    COUNT(*) AS total_tracks
FROM spotify_merged
GROUP BY popularity_range
ORDER BY popularity_range;


