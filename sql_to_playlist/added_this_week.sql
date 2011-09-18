SELECT
    path
FROM
    songs
WHERE
    time_added > strftime("%s", DATETIME("now", "-8 days"))
ORDER BY
    artist, year, album, track
;