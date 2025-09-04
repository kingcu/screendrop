# S3 screenshots made easy!
Requires flameshot, s3cmd. Current version made for wayland

Put screendrop.sh in a folder `scripts` in your home directory, make it executable.

Map the command `~/.scripts/screendrop.sh` to whatever hotkey you want. Update print screen button mapping, or customize it.

Once you make your selection in flameshot, hit the enter key to trigger flameshot to return the screenshot. When screendrop.sh launches flameshot, it passes the `--raw` option, which means when flameshot returns, the resulting screenshot can be piped in a script.

Older versions of flameshot didn't have this, and older versions of screendrop worked around it by using dbus to capture the screenshot pasted into the clipboard by flameshot. Since flameshot has been updated that workaround is no longer needed. Look in git commit history for older versions if needed.
