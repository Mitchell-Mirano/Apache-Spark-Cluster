#!/bin/bash
if [[ $SPARK_WORKLOAD = "master" ]]; then
    ./start-master.sh -h 0.0.0.0
else
    ./start-worker.sh $SPARK_MASTER
fi
tail -f /dev/null