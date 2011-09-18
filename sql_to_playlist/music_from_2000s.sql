SELECT
    path
FROM
    songs
WHERE
    year >= 2000 and year <= 2009
ORDER BY
    artist, year, album, track
;