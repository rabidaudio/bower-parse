bower-parse
===========

[Bower](http://bower.io) package for [Parse.com](http://parse.com) Javascript SDK

      bower install parse

### NPM Source: [ParsePlatform/Parse-SDK-JS](https://github.com/ParsePlatform/Parse-SDK-JS)

Contributing
------------

This package has to be updated manually when new updates are released, and often I forget to check for new versions. [`download_latest.sh`](download_latest.sh) will check for a new version and update if neccessary. You can also manually check for updates [on Parse's website](https://parse.com/docs/downloads).

If you notice the package is out-of-date:

- fork this and create a new branch
- download via npm: `./download_npm.js [VERSION]`
- commit
- `bower version [VERSION]`
- push with tags (`git push --tags`)
- send a PR
