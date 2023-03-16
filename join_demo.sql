-- let's query our data and make sure it is what we think it is

SELECT * FROM artist;

SELECT* FROM favorite_song;

-- INNER JOIN

-- LEFT TABLE (FROM clause)
-- RIGHT TABLE (JOIN clause)

SELECT *
FROM artist
INNER JOIN favorite_song
ON favorite_song.artist_id = artist.artist_id;
-- parent.child style relationship here

SELECT * from artist;

-- let's flip the order

SELECT *
FROM favorite_song
INNER JOIN artist
ON favorite_song.artist_id = artist.artist_id;

SELECT song_name, album, artist_name--this is what we see (columns)
FROM favorite_song
INNER JOIN artist
ON favorite_song.artist_id = artist.artist_id;

SELECT song_name, album, artist_id
FROM favorite_song;

SELECT artist_name
from artist
where artist_id = 2;

--LEFT JOIN
SELECT song_name, artist_name, album
FROM artist
LEFT JOIN favorite_song
ON favorite_song.artist_id = artist.artist_id;

-- reverse left join
SELECT song_name, artist_name, album
FROM favorite_song
LEFT JOIN artist
ON favorite_song.artist_id = artist.artist_id;


--RIGHT JOIN
SELECT song_name, artist_name, album
FROM artist
RIGHT JOIN favorite_song
ON favorite_song.artist_id = artist.artist_id;

-- reverse right join aka left join

SELECT song_name, artist_name, album
FROM favorite_song
RIGHT JOIN artist
ON favorite_song.artist_id = artist.artist_id;

-- it's all relative!

-- FULL JOIN aka outer join
SELECT song_name, artist_name, album
FROM artist
FULL JOIN favorite_song
ON artist.artist_id = favorite_song.artist_id


-- just to show we can use that syntax all over the place
SELECT favorite_song.song_name, artist_name, album, artist.artist_id
FROM artist
FULL JOIN favorite_song
ON artist.artist_id = favorite_song.artist_id

-- don't forget we can alias

SELECT song_name, artist_name, album
FROM artist
FULL JOIN favorite_song AS f_s
ON artist.artist_id = f_s.artist_id

-- we can still do all the other parts that we learned on day1:

SELECT song_name, artist_name, album
FROM artist as a
FULL JOIN favorite_song AS f_s
ON a.artist_id = f_s.artist_id
WHERE artist_name like 'M%'
ORDER BY album DESC; -- I think I mentioned desc as default yesterday, ASC is the actual default





