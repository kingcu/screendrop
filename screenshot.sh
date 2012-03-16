#!/bin/bash

POS=2;  # Starting from position 2 in the string.
LEN=8;  # Extract eight characters.
str0=`date '+%d%b%y-%N'`;
str1=$( echo "$str0" | md5sum | md5sum );
randstring="${str1:$POS:$LEN}";
fn="$HOME/Dropbox/Public/screenshot-$randstring.jpg";

import "$fn";
url=`dropbox puburl $fn`
echo $url | xclip -selection clipboard;
