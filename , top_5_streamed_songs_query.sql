
SELECT genre_name , title , COUNT(s.song_id) AS total_streams
FROM streams s
JOIN songs so ON s.song_id = so.song_id
JOIN genres g ON so.genre_id = g.genre_id
GROUP BY g.genre_name , so.title
ORDER BY COUNT(s.song_id) DESC
LIMIT 5;
