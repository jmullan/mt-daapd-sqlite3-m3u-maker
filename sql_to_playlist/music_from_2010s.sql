SELECT
    path
FROM
    songs
WHERE
    year >= 2010 and year <= 2019
ORDER BY
    artist, year, album, track
;