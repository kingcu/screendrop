#!/bin/bash

#based around flameshot, and relies on a persistent daemon that watches dbus events for captureTaken events, which spawn this script
#requires s3cmd to upload to s3
#requires xclip for putting URL into clipboard

str0=`date '+%d%b%y-%N'`;
str1=$( echo "$str0" | md5sum );
randstring="${str1:0:8}";
fn="$randstring-$str0.png";
url="https://cos.ridewithgps.com/screenshots/$fn"

#middle click, which we can preload with the URL before it's uploaded. we can't
#load the url into the main clipboard (ctl+v) because it contains the image data
printf $url | xclip;

xclip -selection clipboard -t image/png -o | s3cmd put - s3://screenshots/$fn -c ~/.s3-screendrop.conf --mime-type="image/png" --acl-public
printf $url | xclip -selection clipboard;
