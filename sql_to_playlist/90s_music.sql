SELECT
    path
FROM
    songs
WHERE
    year >= 1990 and year <= 1999
ORDER BY
    artist, year, album, track
;