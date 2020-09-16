#!/bin/bash
# Change directory
cd "$(dirname "$0")"
cd ../mempoolServer
java -Dspring.application.json='{"bitcoind.host":"192.168.3.2","raw-tx-source.url":"http://192.168.14.2:8080/memPool/rawTxs"}' -jar ./build/libs/mempoolServer-0.0.1-SNAPSHOT.jar

