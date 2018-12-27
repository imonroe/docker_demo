#!/bin/bash

docker-compose -f ./docker-compose.yml -f ./stack_application1/docker-compose.yml up -d
