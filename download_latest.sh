#!/bin/bash
LATEST=`wget -q -O - https://parse.com/docs/downloads | grep -A5 "JavaScript Changelog" | grep -o -m 1 -e 'v[0-9\.]\{5,\}'`
CURRENT=`git describe --abbrev=0 --tags`
if [[ "$LATEST" == "$CURRENT" ]]; then
    echo "Already up to date ($CURRENT)."
else
    echo "Updating: $CURRENT => $LATEST"
    wget https://parse.com/downloads/javascript/parse/latest/js -O parse.js
    wget https://parse.com/downloads/javascript/parse/latest/min.js -O parse.min.js
fi
