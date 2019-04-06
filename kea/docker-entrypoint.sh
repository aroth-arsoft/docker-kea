#!/bin/bash

keactrl start
sleep 1

trap 'keactrl stop' EXIT

declare -A pids
# get pids and store pids in array
for f in /usr/local/var/kea/kea*.pid; do
    i=`basename "$f"`
    pids[${i}]=`cat $f`
done

# wait for all pids
while kill -0 ${pids[*]} 2> /dev/null; do sleep 1; done;
