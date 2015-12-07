#!/usr/bin/env bash

bower install underscore
PACKAGE_VERSION=$(bower info underscore version | tail -n 1 | cut -d "'" -f 2)
cd ./bower_components
zip -r "../underscore-$PACKAGE_VERSION.zip" ./underscore
cd ..
scp "underscore-$PACKAGE_VERSION.zip" distrib@ftp.anakeen.com:/share/ftp/third-party/
echo $PACKAGE_VERSION > VERSION