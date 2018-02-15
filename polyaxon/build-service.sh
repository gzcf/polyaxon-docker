#!/usr/bin/env bash
if [ $# -lt 2 ]
  then
    echo "You should provide at least 2 args: image name and tag"
     exit 1
fi


cd polyaxon/$1

echo "Build Base image for $1:$2"
docker build -t polyaxon/polyaxon-$1:$2 .

if [ "$2" == "master" ]
    then
        docker build -t polyaxon/polyaxon-$1:latest .
fi
