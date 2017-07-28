#!/usr/bin/env bash

if [ $# -ne 3 ]
  then
    echo "You should provide 3 args"
     exit 1
fi

echo "Pushing base images:"
docker push polyaxon/base:$1
docker push polyaxon/base:api-$1

echo "Pushing base tf images:"
docker push polyaxon/polyaxon:$3-$1-$2
docker push polyaxon/polyaxon:api-$3-$1-$2
