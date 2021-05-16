#!/bin/sh

which node 2> /dev/null || \
        echo "Error: Install Nonejs!"

xdg-open 'https://app.strem.io/shell-v4.4/'
pgrep -f "node ./stremio-server.js" || setsid -f node ./stremio-server.js > /dev/null
