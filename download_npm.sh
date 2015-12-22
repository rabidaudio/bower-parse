#!/bin/sh
VERSION="$1"
if [ -z "$VERSION" ]; then
	npm install parse --silent
else
	npm install parse@${VERSION} --silent
fi
cp ./node_modules/parse/dist/parse-latest.js ./parse.js
cp ./node_modules/parse/dist/parse-latest.min.js ./parse.min.js
