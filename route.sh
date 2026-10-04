#!/bin/sh

set -e

ip addr add 240.0.0.2/24 dev tun0
ip link set dev tun0 up
ip route add default via 240.0.0.1 dev tun0

