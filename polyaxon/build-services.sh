#!/usr/bin/env bash
if [ $# -lt 2 ]
  then
    echo "You should provide at least 2 args: branch tag"
     exit 1
fi

./polyaxon/prepare.sh $1

./polyaxon/build-service.sh api $2
./polyaxon/build-service.sh beat $2
./polyaxon/build-service.sh crons $2
./polyaxon/build-service.sh dockerizer $2
./polyaxon/build-service.sh hpsearch $2
./polyaxon/build-service.sh manage $2
./polyaxon/build-service.sh monitor-namespace $2
./polyaxon/build-service.sh monitor-resources $2
./polyaxon/build-service.sh monitor-statuses $2
./polyaxon/build-service.sh monolith $2
./polyaxon/build-service.sh scheduler $2
./polyaxon/build-service.sh sidecar $2
./polyaxon/build-service.sh streams $2

./polyaxon/clean.sh
