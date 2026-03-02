

#!/bin/bash
process="cron"

if   pgrep -x "$process" > /dev/null ; then 
        echo "$process is running"
else 
        echo "$process is NOT running"
fi
