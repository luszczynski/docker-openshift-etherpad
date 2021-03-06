#!/bin/bash
export VERSION=1.6.5
docker build . -t wkulhanek/etherpad:${VERSION}
docker tag wkulhanek/etherpad:${VERSION} wkulhanek/etherpad:latest
docker push wkulhanek/etherpad:${VERSION}
docker push wkulhanek/etherpad:latest
git tag ${VERSION}
git push origin ${VERSION}
