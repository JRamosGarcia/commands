#!/bin/bash
# Este script ejecuta la tarea docker en todos los servicios
#Cambia el directorio a donde estamos
cd "$(dirname "$0")"
cd ../configurationServer
echo 
echo "Creando imagen de proyecto" $(pwd) "....."
./gradlew bootJar docker
cd "$(dirname "$0")"
cd ../serviceDiscovery
echo 
echo "Creando imagen de proyecto" $(pwd) "....."
./gradlew bootJar docker
cd "$(dirname "$0")"
cd ../gatewayService
echo 
echo "Creando imagen de proyecto" $(pwd) "....."
./gradlew bootJar docker
cd "$(dirname "$0")"
cd ../txMemPool
echo 
echo "Creando imagen de proyecto" $(pwd) "....."
./gradlew bootJar docker
cd "$(dirname "$0")"
cd ../bitcoindAdapter
echo 
echo "Creando imagen de proyecto" $(pwd) "....."
./gradlew bootJar docker
cd "$(dirname "$0")"
cd ../mempoolRecorder
echo 
echo "Creando imagen de proyecto" $(pwd) "....."
./gradlew bootJar docker
cd "$(dirname "$0")"
echo 
echo "Eliminamos las imagenes intermedias ....."
docker rmi $(docker image ls -f "dangling=true" -q) || echo "No hay imagenes intermedias que borrar"

