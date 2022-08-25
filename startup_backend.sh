#!/usr/bin/env bash

# make log files

touch /tmp/cpus
touch /tmp/mems
touch /tmp/temps

# first kill all running instances, maybe via file-name rather than ps aux of command
kill $(ps aux | grep "sar -u 1" | head -n1 | awk '{print $2}')
kill $(ps aux | grep "watch_current_mets.sh" | head -n1 | awk '{print $2}')


# start em up

sar -u 1 >> /tmp/cpus &
bash ./watch_current_mets.sh &
