#!/bin/sh
VERSION="$1"
git submodule update --remote
cd Parse-SDK-JS
if [ -z "$VERSION" ]; then
	git checkout master	
else
	git checkout ${VERSION}
fi
npm install
./build_releases.sh
cd ..
cp ./Parse-SDK-JS/dist/parse-latest.js ./parse.js
cp ./Parse-SDK-JS/dist/parse-latest.min.js ./parse.min.js
