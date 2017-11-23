#!/usr/bin/env bash

if [ $# -ne 1 ]
  then
    echo "You should provide 1 args"
     exit 1
fi

PY=python
if [ $1 -eq 3 ]
then
    PY=python3
fi
echo "Python interpreter $PY"


echo "Testing base images:"

echo "Pulling docker image base:$1"
if [ $1 -eq 3 ]
  then
    docker pull polyaxon/polyaxon-base
    docker pull polyaxon/polyaxon-npm-base
  else
    docker pull polyaxon/polyaxon-base2
    docker pull polyaxon/polyaxon-npm-base2
fi


if [ $1 -eq 3 ]
then
    echo "Running py3 base images tests"
    for image in polyaxon/polyaxon-base polyaxon/polyaxon-npm-base
    do
        echo "Test for python2"
        docker run $image python3 --version
    done
  else
    echo "Running py2 base images tests"
    for image in polyaxon/polyaxon-base2 polyaxon/polyaxon-npm-base2
    do
        echo "Test for python2"
        docker run $image python --version
    done
fi




