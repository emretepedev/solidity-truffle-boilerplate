#!/bin/bash

mkdir solbin/ &>/dev/null
mkdir solbin/flatten/ &>/dev/null
rm -rf solbin/flatten/"$1Flatten.sol" &>/dev/null

yarn run truffle-flattener contracts/"$1".sol >>solbin/flatten/"$1Flatten".sol

ex -c ':1,2d' -c ':wq' solbin/flatten/"$1Flatten".sol
ex -snc '$-0,$d|x' solbin/flatten/"$1Flatten".sol

echo "export solbin/flatten/$1Flatten.sol"
