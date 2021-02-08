docker-compose \
-f kafka1.yml \
-f zuul-gateway.yml \
-f txMempool1.yml \
-f txMempool2.yml \
-f txMempool3-OtherDB.yml \
-f mongo1Recorder.yml \
-f mongo1TxMempool.yml \
-f adminServer.yml \
-f mongo2TxMempool.yml \
-f bitcoindAdapter1.yml \
-f zookeeper.yml \
-f configurationServer.yml \
-f serviceDiscoveryServer.yml \
down
