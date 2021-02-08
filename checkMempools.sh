#!/bin/bash

cd ~/PROGRAMS/bitcoin-master/src

echo "bitcoind:" && \
./bitcoin-cli -rpcconnect=pc getmempoolinfo && \ 
echo "bitcoindAdapter1:" && curl http://bitcoindadapter1:8080/memPool/size && \
echo "" && echo "txmempool1:" && curl http://txmempool1:8080/memPool/size && \
echo "" && echo "txMempool2:" && curl http://txmempool2:8080/memPool/size && \
echo "" && echo "txMempool3:" && curl http://txmempool3:8080/memPool/size && \
echo ""

