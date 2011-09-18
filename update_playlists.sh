#!/bin/bash
$sql_dir=$1
$mt_daapd_songs3=$2
$mt_daapd_music_dir=$3
exit;
cd /data/music/parseDaapd/sql_to_playlist
for file in `ls -1 *.sql` ; do
    basename=`echo $file | sed 's/.*\///'`
    name_part=`echo $basename | sed 's/.sql$//'`
    m3u_name="${mt_daapd_music_dir}${name_part}.m3u"
    cat "$file" | sqlite3 "$mt_daapd_songs3" > "$m3u_name"
done