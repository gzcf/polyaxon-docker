#!/usr/bin/env bash
if [ $# -lt 2 ]
  then
    echo "You should provide at least 2 args: image name and tag"
     exit 1
fi

cd clones/polyaxon

if [ -f .dockerignore ]; then
    rm .dockerignore
fi

if [ -f Dockerfile ]; then
    rm Dockerfile
fi

echo "Copy Dockerfile and .dockerignore"
cp ../../polyaxon/$1/.dockerignore .

if [ "$2" == "master" ]
    then
        cp ../../polyaxon/$1/Dockerfile.master Dockerfile
    else
        if
            git rev-parse $1 >/dev/null 2>&1
        then
            # Tag
            cp ../../polyaxon/$1/Dockerfile .
        else
            # Branch
            cp ../../polyaxon/$1/Dockerfile.master Dockerfile
        fi
fi

echo "Build Base image for $1:$2"

docker build -t polyaxon/polyaxon-$1:$2 .
if [ "$2" == "master" ]
    then
        docker build -t polyaxon/polyaxon-$1:latest .
fi
