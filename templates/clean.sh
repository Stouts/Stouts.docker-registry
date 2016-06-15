#!/bin/bash

if [ $# -lt 1 ]
then
        echo "Usage : $0 REPO_NAME"
        exit
fi

REPO=$1

for hash in $(ls {{registry_home}}/data/docker/registry/v2/repositories/$REPO/_manifests/revisions/sha256 -t | tail -n +5); do
    curl -X DELETE {{registry_host}}/v2/$REPO/manifests/sha256:$hash
    docker exec registry bin/registry garbage-collect /etc/docker/registry/config.yml
done
