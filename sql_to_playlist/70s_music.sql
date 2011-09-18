SELECT
    path
FROM
    songs
WHERE
    year >= 1970 and year <= 1979
ORDER BY
    artist, year, album, track
;