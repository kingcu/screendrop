# Dropbox screenshots made easy!

I mapped this to modkey+shift+s in awesome, so I can easily just hit the stroke, click/drag my screenshot area, then paste the URL in chat/wherever.

Example awesome keybinding:

    awful.key({ modkey, "Shift"}, "s", function () os.execute("screenshot") end)