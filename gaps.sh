#!/bin/bash

if [[ ! -f /tmp/backfill ]]; then
    echo -e "Fill not complited...skipped..."  
fi

date_timestamp=$(date '+%Y-%m-%d %H:%M:%S')
echo -e "Fill was started at $date_timestamp" >> /tmp/fill_history.log
/usr/local/bin/chainweb-data fill --service-host=104.248.86.98 --p2p-host=104.248.86.98 --service-port=8080 --p2p-port=1917 --dbuser=postgres --dbpass=postgres --dbname=postgres
date_timestamp=$(date '+%Y-%m-%d %H:%M:%S')
echo -e "Fill was ended at $date_timestamp" >> /tmp/fill_history.log
