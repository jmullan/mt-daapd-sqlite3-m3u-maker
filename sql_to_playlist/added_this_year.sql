SELECT
    path
FROM
    songs
WHERE
    time_added > strftime("%s", DATETIME("now", "-1 years"))
ORDER BY
    artist, year, album, track
;