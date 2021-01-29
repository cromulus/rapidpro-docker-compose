#!/bin/bash

source ./versions
cd .. && git submodule update --force --recursive --init --remote && cd rapidpro_build
cd rapidpro-docker
docker build . -t cromulus/rapidpro:$RAPIDPRO_VERSION --build-arg RAPIDPRO_VERSION=$RAPIDPRO_VERSION
docker push cromulus/rapidpro:$RAPIDPRO_VERSION
docker build . -t cromulus/rapidpro:latest --build-arg RAPIDPRO_VERSION=$RAPIDPRO_VERSION
docker push cromulus/rapidpro:latest

cd ../mailroom-docker
docker build . -t cromulus/mailroom:$MAILROOM_VERSION --build-arg MAILROOM_VERSION=$MAILROOM_VERSION
docker push cromulus/mailroom:$MAILROOM_VERSION
docker build . -t cromulus/mailroom:latest --build-arg MAILROOM_VERSION=$MAILROOM_VERSION
docker push cromulus/mailroom:latest

cd ../courier-docker
docker build . -t cromulus/courier:$COURIER_VERSION --build-arg COURIER_VERSION=$COURIER_VERSION
docker push cromulus/courier:$COURIER_VERSION
docker build . -t cromulus/courier:latest --build-arg COURIER_VERSION=$COURIER_VERSION
docker push cromulus/courier:latest


cd ../rp-archiver-docker
docker build . -t cromulus/rp-archiver:$RP_ARCHIVER_VERSION --build-arg RP_ARCHIVER_VERSION=$RP_ARCHIVER_VERSION
docker push cromulus/rp-archiver:$RP_ARCHIVER_VERSION
docker build . -t cromulus/rp-archiver:latest --build-arg RP_ARCHIVER_VERSION=$RP_ARCHIVER_VERSION
docker push cromulus/rp-archiver:latest


cd ../rp-indexer-docker
docker build . -t cromulus/rp-indexer:$RP_INDEXER_VERSION --build-arg RP_INDEXER_VERSION=$RP_INDEXER_VERSION
docker push cromulus/rp-indexer:$RP_INDEXER_VERSION
docker build . -t cromulus/rp-indexer:latest --build-arg RP_INDEXER_VERSION=$RP_INDEXER_VERSION
docker push cromulus/rp-indexer:latest
