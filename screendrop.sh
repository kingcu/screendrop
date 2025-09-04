#!/bin/bash

str0=`date '+%d%b%y-%N'`;
str1=$( echo "$str0" | md5sum );
randstring="${str1:0:8}";
fn="$randstring-$str0.png";
url="https://cos.ridewithgps.com/screenshots/$fn"

wl-copy $url

flameshot gui --raw |\
  s3cmd put - s3://screenshots/$fn -c ~/.s3-screendrop.conf --mime-type="image/png" --acl-public
