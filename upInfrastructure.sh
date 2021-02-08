docker-compose \
    -f zookeeper.yml \
    -f kafka1.yml \
    -f configurationServer.yml \
    -f adminServer.yml \
    -f serviceDiscoveryServer.yml \
    -f zuul-gateway.yml \
    up -d