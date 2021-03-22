#!/bin/bash

config_file="$(pwd)/config/config.js"
if [ ! -f $config_file ]; then
    echo "$config_file not found"
    exit
fi

config_wallet_file="$(pwd)/config/config.wallet.js"
if [ ! -f $config_wallet_file ]; then
    echo "$config_wallet_file not found"
    exit
fi

./scripts/init-letsencrypt.sh