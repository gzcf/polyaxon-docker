#!/usr/bin/env bash
if [ $# -lt 1 ]
  then
    echo "You should provide at least 1 args: tag"
     exit 1
fi


echo "Push image polyaxon/polyaxon-api:$1"
docker push polyaxon/polyaxon-api:$1
if [ "$1" == "master" ]
    then
        docker push polyaxon/polyaxon-api:latest
fi
echo "Push image polyaxon/polyaxon-api-events:$1"
docker push polyaxon/polyaxon-api-events:$1
if [ "$1" == "master" ]
    then
        docker push polyaxon/polyaxon-api-events:latest
fi
echo "Push image polyaxon/polyaxon-beat:$1"
docker push polyaxon/polyaxon-beat:$1
if [ "$1" == "master" ]
    then
        docker push polyaxon/polyaxon-beat:latest
fi
echo "Push image polyaxon/polyaxon-monitor-namespace:$1"
docker push polyaxon/polyaxon-monitor-namespace:$1
if [ "$1" == "master" ]
    then
        docker push polyaxon/polyaxon-monitor-namespace:latest
fi
echo "Push image polyaxon/polyaxon-monitor-resources:$1"
docker push polyaxon/polyaxon-monitor-resources:$1
if [ "$1" == "master" ]
    then
        docker push polyaxon/polyaxon-monitor-resources:latest
fi
echo "Push image polyaxon/polyaxon-monitor-statuses:$1"
docker push polyaxon/polyaxon-monitor-statuses:$1
if [ "$1" == "master" ]
    then
        docker push polyaxon/polyaxon-monitor-statuses:latest
fi
echo "Push image polyaxon/polyaxon-sidecar:$1"
docker push polyaxon/polyaxon-sidecar:$1
if [ "$1" == "master" ]
    then
        docker push polyaxon/polyaxon-sidecar:latest
fi
echo "Push image polyaxon/polyaxon-workers:$1"
docker push polyaxon/polyaxon-workers:$1
if [ "$1" == "master" ]
    then
        docker push polyaxon/polyaxon-workers:latest
fi
echo "Push image polyaxon/polyaxon-manage:$1"
docker push polyaxon/polyaxon-manage:$1
if [ "$1" == "master" ]
    then
        docker push polyaxon/polyaxon-manage:latest
fi
