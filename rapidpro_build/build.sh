#!/bin/bash

source ./versions
cd rapidpro-docker
git fetch && git checkout master
docker build . -t cromulus/rapidpro:v$RAPIDPRO --build-arg RAPIDPRO_VERSION=v$RAPIDPRO
docker push cromulus/rapidpro:v$RAPIDPRO
docker build . -t cromulus/rapidpro:latest --build-arg RAPIDPRO_VERSION=v$RAPIDPRO
docker push cromulus/rapidpro:latest

cd ../mailroom-docker
git fetch && git checkout master
docker build . -t cromulus/mailroom:$MAILROOM --build-arg MAILROOM_VERSION=$MAILROOM
docker push cromulus/mailroom:$MAILROOM
docker build . -t cromulus/mailroom:latest --build-arg MAILROOM_VERSION=$MAILROOM
docker push cromulus/mailroom:latest

cd ../courier-docker
git fetch && git checkout master
docker build . -t cromulus/courier:$COURIER --build-arg COURIER_VERSION=$COURIER
docker push cromulus/courier:$COURIER
docker build . -t cromulus/courier:latest --build-arg COURIER_VERSION=$COURIER
docker push cromulus/courier:latest


cd ../rp-archiver-docker
git fetch && git checkout master
docker build . -t cromulus/rp-archiver:$ARCHIVER --build-arg RP_ARCHIVER_VERSION=$ARCHIVER
docker push cromulus/rp-archiver:$ARCHIVER
docker build . -t cromulus/rp-archiver:latest --build-arg RP_ARCHIVER_VERSION=$ARCHIVER
docker push cromulus/rp-archiver:latest


cd ../rp-indexer-docker
git fetch && git checkout master
docker build . -t cromulus/rp-indexer:$INDEXER --build-arg RP_INDEXER_VERSION=$INDEXER
docker push cromulus/rp-indexer:$INDEXER
docker build . -t cromulus/rp-indexer:latest --build-arg RP_INDEXER_VERSION=$INDEXER
docker push cromulus/rp-indexer:latest
