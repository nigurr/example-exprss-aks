#!/bin/sh

# dir for test reports and coverage data. nuke off existing stuff
# will be auto created by docker
rm -rf reports

#echo "********** Setting up image **********"
#docker build -t nodejs-sample ./

# bind source folder so that source files are available in container or we can do COPY source in dockerimage
# bind reports folder so that we can access test reports/coverage data in host system
docker run \
    -v $PWD/reports:/home/node/app/reports \
    -d nodejs-sample #-it nodejs-sample /bin/sh