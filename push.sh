#!/usr/bin/env bash

if [ $# -ne 1 ]
  then
    echo "You should provide 1 args"
     exit 1
fi

echo "Pushing base images:"
docker push polyaxon/polyaxon-base
docker push polyaxon/polyaxon-npm-base
