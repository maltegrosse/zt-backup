#!/bin/bash

while :

do
        cd / && tar -czvf backup/backup.tar.gz volume
        if [ $INTERVAL -eq 0 ]
        then
                break
        else
                echo "{status: backup, date:$(date -Iseconds)}"
                sleep "${INTERVAL}m"
        fi
done

exit 0
