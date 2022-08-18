#!/bin/bash

# wildcard * is used here. Anything other than start and stop will cause the last pattern to be matched. In that case, echo and exit commands will be executed

case "$1" in
    start)
        /usr/sbin/sshd
        ;;
    stop)
        kill $(cat /var/run/sshd.pid)
        ;;
    *)
        echo "Usage: $0 start|stop" ; exit 1
        ;;
esac
