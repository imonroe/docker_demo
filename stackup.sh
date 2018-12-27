#!/bin/bash

HOME_DIR=$PWD

# first we load our administration stack
docker-compose -f ./docker-compose.yml up -d

# now we load our application1 stack
cd stack_application1
docker-compose -f ./docker-compose.yml up -d
cd $HOME_DIR

# now we load our frontpage stack
cd stack_frontpage
docker-compose -f ./docker-compose.yml up -d
cd $HOME_DIR

# Following the same pattern, we can load the rest of our stacks

