#!/bin/bash

if [ "$RAN_STARTUP" || "$BBENV" ] 
then
    return 0
fi
export RAN_STARTUP="TRUE"

# Open programs on monitors
DISPLAY=:0.1
konsole nohup

DISPLAY=:0.2
konsole nohup

DISPLAY=:0.4
konsole nohup

DISPLAY=:0.5
konsole nohup

DISPLAY=:0.3
konsole nohup
skype &



DISPLAY=:0.0