SELECT
    path
FROM
    songs
WHERE
    time_added > strftime("%s", DATETIME("now", "-1 months"))
ORDER BY
    artist, year, album, track
;