#!/usr/bin/env bash
if [ $# -lt 1 ]
  then
    echo "You should provide at least 1 args: tag"
     exit 1
fi


./polyaxon/build-core.sh $1
./polyaxon/build-service api $1
./polyaxon/build-service api-events $1
./polyaxon/build-service beat $1
./polyaxon/build-service monitor-namespace $1
./polyaxon/build-service monitor-resources $1
./polyaxon/build-service monitor-statuses $1
./polyaxon/build-service sidecar $1
./polyaxon/build-service workers-events $1
./polyaxon/build-service workers-scheduler $1

