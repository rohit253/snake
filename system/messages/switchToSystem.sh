#!/bin/sh
system="$1"
echo  "Switching to $system";

./parseMessageFormat.py $system.format
cp message.h ../../ns-3-dev/src/applications/model/
cp message.cc ../../ns-3-dev/src/applications/model/
cp Strategy.pm ../scripts/Gatling/

cd ../../ns-3-dev/; ./waf -j4
