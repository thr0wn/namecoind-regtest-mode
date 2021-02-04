#!/bin/bash
namecoind -regtest -datadir=.namecoin -reindex -deprecatedrpc=accounts  > /dev/null 2>&1
sleep 5
namecoin-cli -rpcport=1112 -rpcuser=root -rpcpassword=root createwallet "" > /dev/null 2>&1 || true 
namecoin-cli -rpcport=1112 -rpcuser=root -rpcpassword=root generatetoaddress 1 mgrGgK3gDCJp8osBUSPPC1ktRuKnxEBg93 > /dev/null 2>&1
sleep 5
namecoind -regtest -datadir=.namecoin-2 -reindex -deprecatedrpc=accounts  > /dev/null 2>&1
echo "Namecoind started!"
/bin/bash "$@"