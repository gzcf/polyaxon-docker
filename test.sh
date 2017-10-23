#!/usr/bin/env bash

if [ $# -ne 3 ]
  then
    echo "You should provide 3 args"
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
docker pull polyaxon/base:$1

echo "Pulling docker image base:api-$1"
docker pull polyaxon/base:api-$1

echo "Pulling docker image polyaxon:$3-$1-$2"
docker pull polyaxon/polyaxon:$3-$1-$2

echo "Pulling docker image polyaxon:api-$3-$1-$2"
docker pull polyaxon/polyaxon:api-$3-$1-$2


echo "Running images base tests"
for image in polyaxon/base:$1 polyaxon/base:api-$1 polyaxon/polyaxon:$3-$1-$2 polyaxon/polyaxon:api-$3-$1-$2 polyaxon/polyaxon:lib-$3-$1-$2
do
    echo "Test for $image"
    echo "jupyter"
    docker run $image jupyter --version
    echo "matplotlib"
    docker run $image $PY -c "import matplotlib"
    echo "numpy"
    docker run $image $PY -c "import numpy"
    echo "pandas"
    docker run $image $PY -c "import pandas"
    echo "scipy"
    docker run $image $PY -c "import scipy"
done


echo "Running images base api tests"
for image in polyaxon/base:api-$1 polyaxon/polyaxon:api-$3-$1-$2 polyaxon/polyaxon:lib-$3-$1-$2
do
    echo "Test for $image"
    echo "django"
    docker run $image $PY -c "import django"
    echo "nvm"
    docker run $image /bin/bash -c 'source $HOME/.bashrc $$ nvm --version'
    echo "node"
    docker run $image node -v
    echo "npm"
    docker run $image npm -v
done

echo "Running polyaxon images tests"
for image in polyaxon/polyaxon:$3-$1-$2 polyaxon/polyaxon:api-$3-$1-$2 polyaxon/polyaxon:lib-$3-$1-$2
do
    echo "Test for $image"
    echo "tensorflow"
    docker run $image $PY -c "import tensorflow"
done


echo "Running polyaxon lib images tests"
for image in polyaxon/polyaxon:lib-$3-$1-$2
do
    echo "Test for $image"
    echo "polyaxon"
    docker run $image $PY -c "import polyaxon"
    docker run $image $PY -c "import polyaxon_schemas"
    docker run $image polyaxon
done
