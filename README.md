# mt-daapd-sqllite3-m3u-maker : Command line tools allowing you to write sql against your mt-daapd song database to create playlists
I had a lot of smart playlists in iTunes, and I have no problem writing SQL, but when I tried to reproduce those smart playlists using the smart playlist editor in mt-daapd, I couldn't get it to do "added in the last x days," so... this. Also, the newish "forked-daapd" doesn't and won't support smart playlists. Then again, I don't know what it uses for persistant storage.

To view the schema of your songs database
echo '.schema songs' | sqlite3 songs.db
