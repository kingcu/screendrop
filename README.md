# S3 screenshots made easy!
Requires flameshot, xclip, s3cmd

Map to whatever hotkey you want. Update print screen button mapping, or customize. I use alt+shift+4, mapped to command `flameshot gui`

When you use the ctl+c functionality inside the screenshot UI, a dbus event is sent that is captured by the flameshot-monitor.sh script. That script fires off the screendrop.sh script, which snags the image from the clipboard, uploads it to s3, and then loads the resulting URL into the clipboard for you to paste wherever.
