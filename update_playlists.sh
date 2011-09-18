#!/bin/bash
if [ $# -ne 3 ] ; then
    echo "Usage: update_playlists.sh /path/to/your/sql/dir /path/to/mt-daapd-db-file /path/to/mt-daapd-music-dir"
    exit 1
fi
if [ ! -e "$1" ] ; then
    echo ${1}": File Not Found"
    exit 1
fi
if [ ! -e "$2" ] ; then
    echo ${2}": File Not Found"
    exit 1
fi
if [ ! -e "$3" ] ; then
    echo ${3}": File Not Found"
    exit 1
fi

sql_dir=$1
mt_daapd_songs3=$2
mt_daapd_music_dir=$3

cd /data/music/parseDaapd/sql_to_playlist
for file in `ls -1 *.sql` ; do
    basename=`echo $file | sed 's/.*\///'`
    name_part=`echo $basename | sed 's/.sql$//'`
    m3u_name="${mt_daapd_music_dir}${name_part}.m3u"
    cat "$file" | sqlite3 "$mt_daapd_songs3" > "$m3u_name"
done