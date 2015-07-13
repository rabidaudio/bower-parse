bower-parse
===========

[Bower](http://bower.io) package for [Parse](http://parse.com)

      bower install parse

Contributing
------------

This package has to be updated manually when new updates are released. I 
don't know anywhere where Parse actually announces new versions, and 
sometimes I forget to check.

If you notice the package is out-of-date:

- download the latest version (you can use `download_latest.sh` if you 
have `wget`)
- update `bower.json` so version number matches the one at the top of 
`parse.js`
- commit
- tag the commit with the version number (`git tag vX.X.X`) and push 
(`git push --tags`)
- send a PR
