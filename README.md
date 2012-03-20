# Dropbox screenshots made easy!

Requires ImageMagick to be installed, since this uses the 'import' command bundled with IM.

I mapped this to modkey+shift+s in awesome, so I can easily just hit the stroke, click/drag my screenshot area, then paste the URL in chat/wherever.

Example awesome keybinding:

    awful.key({ modkey, "Shift"}, "s", function () os.execute("screendrop") end)
