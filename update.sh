#!/bin/sh
set -e
VERSION="$1"
if [ -z "$VERSION" ]; then
	echo "Please supply a version, e.g."
	echo "    ./update.sh 1.8.0"
	exit 1
fi
git submodule update --remote
cd Parse-SDK-JS
git checkout ${VERSION}
npm install
npm run build
cd ..
cp ./Parse-SDK-JS/dist/* .
head parse.js | grep "$VERSION" || exit 1
cd Parse-SDK-JS
git reset --hard HEAD
cd ..
git commit -a -m "updated to $VERSION"
bower version "$VERSION"
