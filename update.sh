#!/bin/sh
VERSION="$1"
git submodule update --remote
cd Parse-SDK-JS
if [ -z "$VERSION" ]; then
	echo "Please supply a version, e.g."
	echo "    ./update.sh v1.8.0"
	exit 1
fi
git checkout ${VERSION}
npm install
./build_releases.sh
cd ..
cp ./Parse-SDK-JS/dist/parse-latest.js ./parse.js
cp ./Parse-SDK-JS/dist/parse-latest.min.js ./parse.min.js
cd ..
git commit -a -m "updated to $VERSION"
bower version "$VERSION"
