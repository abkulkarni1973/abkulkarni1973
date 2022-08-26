#!/bin/bash

LOG=$1
EMON=/opt/intel/sep/bin64/emon
EVENTS=/root/emon_scripts/icx-2s-events.txt

source /opt/intel/sep/sep_vars.sh

# Create LOG directory if not present
if [ ! -z "$LOG" ]
  then
      mkdir -p $LOG
fi

echo "Starting emon... "

$EMON -v > $LOG/emon-v.dat
$EMON -M > $LOG/emon-m.dat
$EMON -i $EVENTS > $LOG/emon.dat 2>&1 &

