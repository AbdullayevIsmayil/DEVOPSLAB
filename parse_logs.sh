

#!/bin/bash

LOG_FILE="/var/log/syslog"
KEYWORD="ERROR"
OUTPUT_FILE="error_lines.log"

if [[ ! -f "$LOG_FILE" ]]; then
    echo "Log file $LOG_FILE not found!"
    exit 1
fi

grep -i "$KEYWORD" "$LOG_FILE" > "$OUTPUT_FILE"

MATCH_COUNT=$(grep -ci "$KEYWORD" "$LOG_FILE")

echo "Found $MATCH_COUNT lines containing \"$KEYWORD\" in $LOG_FILE."
echo "Extracted those lines to $OUTPUT_FILE."
