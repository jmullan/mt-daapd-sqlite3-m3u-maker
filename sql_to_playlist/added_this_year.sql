SELECT
    path
FROM
    songs

    INNER JOIN (
    SELECT
        artist, album
    FROM
        songs
    WHERE
        time_added > strftime("%s", DATETIME("now", "-1 years"))
        )
    AS added ON songs.artist = added.artist AND songs.album = added.album

ORDER BY
    songs.artist, songs.year, songs.album, songs.track
    ;