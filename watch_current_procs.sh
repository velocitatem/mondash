#!/usr/bin/env bash

function get_current_proctree() {
    $(python ./backends/process-tree.py > /tmp/procs);
}


while [ 0 ]; do
    $(get_current_proctree)
    cp /tmp/procs /tmp/procs.bak
    sleep 3;
done
