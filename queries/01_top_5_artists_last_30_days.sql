-- 💡 Question 1: Top 5 most streamed artists in the last 30 days

-- Assuming these tables exist:
-- users(user_id, username, ...)
-- artists(artist_id, artist_name)
-- songs(song_id, title, artist_id, ...)
-- streams(stream_id, user_id, song_id, stream_date)

SELECT
    a.artist_name,
    COUNT(s.stream_id) AS total_streams
FROM streams s
JOIN songs so ON s.song_id = so.song_id
JOIN artists a ON so.artist_id = a.artist_id
WHERE s.stream_date >= CURRENT_DATE - INTERVAL '30 days'
GROUP BY a.artist_name
ORDER BY total_streams DESC
LIMIT 5;

