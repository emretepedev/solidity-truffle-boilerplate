#!/bin/bash

if [ -f ".env" ]; then
  source ".env"

  solc-select install "$TRUFFLE_SOLIDITY_VERSION"
  solc-select use "$TRUFFLE_SOLIDITY_VERSION"
else
  echo "Cannot find .env file. Fix and re-run the 'solcrc.sh'."
  exit 0
fi
