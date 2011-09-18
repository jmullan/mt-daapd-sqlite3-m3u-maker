SELECT
    path
FROM
    songs
WHERE
    year >= 1960 and year <= 1969
ORDER BY
    artist, year, album, track
;