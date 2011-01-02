#!/bin/sh

APT_WORKER=/usr/libexec/apt-worker.real
if [ $# -eq 6 -a $6 == 'BM' ]; then
 exec "$APT_WORKER" "$1" "$2" "$3" "$4" "$5" "${6}D"
else
 exec "$APT_WORKER" "$@"
fi
