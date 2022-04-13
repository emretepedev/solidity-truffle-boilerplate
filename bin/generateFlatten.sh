#!/bin/bash

if [ ! -d solbin/flatten/ ]; then
  mkdir solbin/flatten/ -pv
fi

if [ -f solbin/flatten/"$1Flatten.sol" ]; then
  rm -rf solbin/flatten/"$1Flatten.sol"
fi

yarn run truffle-flattener contracts/"$1".sol >>solbin/flatten/"$1Flatten".sol

echo "export solbin/flatten/$1Flatten.sol"
