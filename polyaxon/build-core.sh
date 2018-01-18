#!/usr/bin/env bash
if [ $# -lt 2 ]
  then
    echo "You should provide at least 2 args: branch tag"
     exit 1
fi

VAR_REPO=https://github.com/polyaxon/polyaxon.git

echo "Clone repo $VAR_REPO"
mkdir clones
cd clones/
git clone $VAR_REPO
cd polyaxon

if [ "$1" != "master" ]
  then
    echo "Using branch"
    git checkout tags/$1
fi

echo "Copy Dockerfile and .dockerignore"
cp ../../polyaxon/.dockerignore .
if [ "$2" == "master" ]
    then
        cp ../../polyaxon/Dockerfile.master Dockerfile
    else
        cp ../../polyaxon/Dockerfile .
fi

echo "Build Base image for core:$2"
docker build -t polyaxon/polyaxon-core .


# Api needs to use different .dockerignore process
echo "Copy Dockerfile and .dockerignore"
cp ../../polyaxon/api/.dockerignore .

echo "Build Base image for core:$2"
docker build -t polyaxon/polyaxon-core-api .

echo "Clean up"
cd ../..
rm -rf clones
