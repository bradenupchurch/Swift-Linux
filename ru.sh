#!/bin/bash
LOGFILE=~/runtime.log
time swift test.swift -g
if [ "$?" -eq "0" ]
then 
echo "Ran successfully" # >> $LOGFILE 2>&1
echo "$(date "+%m%d%Y %T") : Ran successfully" >> $LOGFILE 2>&1
else
echo "$(date "+%m%d%Y %T") : Ran with error $? on exit" # >> $LOGFILE 2>&1
echo "$(date "+%m%d%Y %T") : Ran with error $? on exit" >> $LOGFILE 2>&1
fi
