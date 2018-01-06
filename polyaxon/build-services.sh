#!/usr/bin/env bash
if [ $# -lt 1 ]
  then
    echo "You should provide at least 1 args: tag"
     exit 1
fi


./polyaxon/build-core.sh $1
./build-service api $1
./build-service api-events $1
./build-service beat $1
./build-service monitor-namespace $1
./build-service monitor-resources $1
./build-service monitor-statuses $1
./build-service sidecar $1
./build-service workers-events $1
./build-service workers-scheduler $1

