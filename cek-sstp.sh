#!/bin/bash
red='\e[1;31m'
green='\e[0;32m'
NC='\e[0m'
clear
echo "Checking VPS"
clear
accel-cmd show sessions
echo ""