#!/bin/sh
opt="$1"

[ "$opt" = "-k" ] && { pkill -f 'stremio-server.js'; exit "$?"; }

which node 2> /dev/null || \
        echo "Error: Install Nonejs!"

xdg-open 'https://app.strem.io/'
pgrep -f "node ./stremio-server.js" || setsid -f node ~/.local/share/stremio-server.js > /dev/null
