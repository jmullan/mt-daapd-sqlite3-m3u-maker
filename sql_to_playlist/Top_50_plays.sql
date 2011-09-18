SELECT path FROM (
    SELECT
        *
    FROM
        songs
    ORDER BY
        play_count DESC
        LIMIT 50
    )
ORDER BY artist, year, album, track
;