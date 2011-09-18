SELECT
    path
FROM
    songs
WHERE
    year >= 1980 and year <= 1989
ORDER BY
    artist, year, album, track
;