#!/bin/bash

# $1 is the first argument supplied to the shell script
# If $1 = start then /usr/sbin/sshd is executed
# If $1 = stop then kill command is executed
# If nothing is matched, then nothing happens and shell script continues after the case statement
# Patterns are case-sensitive

case "$1" in
    start)
        /usr/sbin/sshd
        ;;
    stop)
        kill $(cat /var/run/sshd.pid)
        ;;
esac
