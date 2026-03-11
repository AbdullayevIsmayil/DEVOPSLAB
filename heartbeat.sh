


#!/bin/bash

LOGFILE="$HOME/heartbeat.log"
TIMESTAMP=$(date "+%Y-%m-%d %H:%M:%S")
echo "Heartbeat: $TIMESTAMP" >> "$LOGFILE"


