SELECT
    path
FROM
    songs
WHERE
    year >= 1950 and year <= 1959
ORDER BY
    artist, year, album, track
;