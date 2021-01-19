#!/bin/bash
namecoind -regtest -datadir=~/.namecoin > /dev/null 2>&1
sleep 5 
namecoin-cli -rpcport=3334 -rpcuser=root -rpcpassword=root generatetoaddress 1 mgrGgK3gDCJp8osBUSPPC1ktRuKnxEBg93 > /dev/null 2>&1
sleep 5
namecoind -regtest -datadir=~/.namecoin-2 > /dev/null 2>&1
echo "Namecoind started!"
/bin/bash "$@"