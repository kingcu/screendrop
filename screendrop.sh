#!/bin/bash

str0=`date '+%d%b%y-%N'`;
str1=$( echo "$str0" | md5sum );
randstring="${str1:0:8}";
fn="$HOME/Dropbox/Public/screenshot-$randstring.jpg";

import "$fn";
url=`dropbox puburl $fn`
echo $url | xclip -selection clipboard;
