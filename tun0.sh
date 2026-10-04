#!/bin/sh
tun2socks --device tun://tun0 --proxy http://192.168.0.108:8080 atau https://192.168.0.108:8080 socks/4/5://192.168.0.108:8080
