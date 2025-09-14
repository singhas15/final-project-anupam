#!/bin/bash
# simple-interest.sh: calculates simple interest
# usage: ./simple-interest.sh principal rate years
if [ "$#" -ne 3 ]; then
  echo "Usage: $0 principal rate years"
  exit 1
fi
P=$1
R=$2
T=$3
I=$(echo "scale=2; $P * $R * $T / 100" | bc)
echo "Simple Interest: $I"
