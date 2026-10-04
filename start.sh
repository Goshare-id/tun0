#!/bin/sh
set -e

./tun0.sh &
TUN_PID=$!

# Tunggu tun0 dibuat
i=0
while [ ! -e /sys/class/net/tun0 ]; do
    i=$((i + 1))
    [ "$i" -lt 10 ] || {
        echo "tun0 tidak tersedia" >&2
        kill "$TUN_PID" 2>/dev/null || true
        exit 1
    }
    sleep 1
done

./route.sh
wait "$TUN_PID"
