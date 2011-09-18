SELECT
    path
FROM
    songs

    INNER JOIN (
    SELECT DISTINCT
        artist, album
    FROM
        songs
    WHERE
        time_added > strftime("%s", DATETIME("now", "-8 days"))
        )
    AS added ON songs.artist = added.artist AND songs.album = added.album

ORDER BY
    songs.artist, songs.year, songs.album, songs.track
    ;