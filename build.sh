#!/usr/bin/env bash
if [ $# -ne 3 ]
  then
    echo "You should provide 3 args"
     exit 1
fi

PY_VER_DIR="py$1"
TF_VER_DIR="tf$2"
ENV_DIR="$PY_VER_DIR/$TF_VER_DIR/$3"

echo "Build Base image for $PY_VER_DIR"
docker build -f $PY_VER_DIR/DockerfileBase -t polyaxon/base:$1 .

echo "Build Base Api image py$1"
docker build -f $PY_VER_DIR/DockerfileBaseApi -t polyaxon/base:api-$1 .

echo "Build env base image $ENV_DIR"
docker build -f $ENV_DIR/Dockerfile -t polyaxon/polyaxon:$3-$1-$2 .

echo "Build env base api image $ENV_DIR"
docker build -f $ENV_DIR/DockerfileApi -t polyaxon/polyaxon:api-$3-$1-$2 .

echo "Build env base lib image $ENV_DIR"
docker build -f $ENV_DIR/DockerfileLib -t polyaxon/polyaxon:lib-$3-$1-$2 .


