#!/bin/sh
VERSION="$1"
MESSAGE="$2"
if [ -z "$VERSION" ]; then
	echo "Please supply a version, e.g."
	echo "    ./update.sh v1.8.0"
	exit 1
fi
git submodule update --remote
cd Parse-SDK-JS
git checkout ${VERSION}
npm install
./build_releases.sh
cd ..
cp ./Parse-SDK-JS/dist/* .
git commit -a -m "updated to $VERSION \n $MESSAGE"
cd Parse-SDK-JS
git reset --hard HEAD
cd ..
bower version "$VERSION"
