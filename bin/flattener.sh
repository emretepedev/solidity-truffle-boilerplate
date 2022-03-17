#!/bin/bash

mkdir solbin/ &>/dev/null
rm -rf solbin/"$1.sol"
yarn run truffle-flattener contracts/"$1".sol >>solbin/"$1".sol

echo "Check your solbin folder to $1.sol"
