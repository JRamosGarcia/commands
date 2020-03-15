# Commands folder

This a utility commands folder.

	* docker-all.sh Compiles the whole project via gradle, generating docker images. Also removes docker dangling images.
	* docker-compose.yml This is the main script for docker-compose. Launches all services.
	* gogs-docker-compose.yml This is a docker compose for launching a gogs service (git server) that it's used by configuration server.
	* logbitcond1.sh Script for showing in console bitcoindAdapter log.
	* logmempoolrecorder1.sh Script for showing in console mempoolRecorder log.
	* logtxmempool1.sh Script for showing in console txmempool log.
	* txMempoolTest.yml Script for launching an additional txMemPool service to execute commands via /operations/recalculateAllStats REST service