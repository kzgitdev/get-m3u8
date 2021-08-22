#!/bin/bash

##
# Usage:
# ./get-m3u8-to-mp4.sh URL OUTPUT
# param1 : url of live streaming youtube program.
# param2 : the file name output in mp4 format.
#
# ./get-m3u8.sh https://www.youtube.com/watch?v=-ABC123efg_%_ output.mp4
##

# URL is youtube live streaming video
# https://www.youtube.com/watch?v=-ABC123efg_%_
##
URL=$1
echo ${URL}

if [ $# != 2 ]; then
  TIMESTAMP=`date +%Y%m%d-%H%M%S`
  ID=`echo $URL | cut -d "=" -f 2`
  OUTPUT="${TIMESTAMP}-${ID}.mp4"
else
  OUTPUT="$2"
fi

##
# NUM is number of the best quality format.
# command youtube-dl --list-fromats...
#
# format code  extension  resolution note
# 91           mp4        256x144     269k , avc1.4d400c, 30.0fps, mp4a.40.5
# 92           mp4        426x240     507k , avc1.4d4015, 30.0fps, mp4a.40.5
# 93           mp4        640x360     962k , avc1.4d401e, 30.0fps, mp4a.40.2
# 94           mp4        854x480    1282k , avc1.4d401f, 30.0fps, mp4a.40.2
# 95           mp4        1280x720   2447k , avc1.4d401f, 30.0fps, mp4a.40.2 (best)
##
NUM=`youtube-dl --list-formats "${URL}" | grep best | cut -d " " -f 1`

##
# get the *.m3u8 file.
##
M3U8=`youtube-dl -f ${NUM} -g ${URL}`

##
# 
#
##
ffmpeg -i "${M3U8}" -c copy -bsf:a aac_adtstoasc "${OUTPUT}"
