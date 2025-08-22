#!/bin/bash

# topshiriq 1
# grep -i 'error' /var/log/syslog | tail -n 50

# topshiriq 2
# a=`df / | grep '/' | awk '{print $5}' | cut -d '%' -f1` 
# if [ $a -gt 80 ]; then
#     echo "Disk space is critically high" > disk_alert.txt
# else
#     echo "Disk usage is OK" > disk_alert.txt
# fi

# topshiriq 3

array={}