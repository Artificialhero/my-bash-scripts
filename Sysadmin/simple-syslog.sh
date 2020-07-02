#!/bin/bash
#This script will show time/date, list logged in users and sys uptime. Then saves it to a specified logfile location.
echo "Where would you like to save the log file?"
read save
printf "\n"

date 1>$save
who 1>>$save
uptime 1>>$save
printf "\n"

echo "The log file has been saved to:" $save
