#!/bin/bash

#!/bin/bash

HOME_DIR=$PWD

# unload our application1 stack
cd stack_application1
docker-compose -f ./docker-compose.yml stop
cd $HOME_DIR

# unload our frontpage stack
cd stack_frontpage
docker-compose -f ./docker-compose.yml stop
cd $HOME_DIR

# unload our stats stack
cd stack_stats
docker-compose -f ./docker-compose.yml stop
cd $HOME_DIR

# unload our wordpress stack
cd stack_wordpress
docker-compose -f ./docker-compose.yml stop
cd $HOME_DIR

# unload our laravel stack
cd stack_laravel
docker-compose -f ./docker-compose.yml stop
cd $HOME_DIR

# finally, we unload our administration stack
docker-compose -f ./docker-compose.yml stop
