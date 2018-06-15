#!/bin/bash

# Stop nodes
echo "### Stoping nodes ..."
for c in {1..6} ; do
    docker-machine stop node$c
done

# Remove nodes
echo "### Removing nodes ..."
for c in {1..6} ; do
    docker-machine rm node$c --force
done
