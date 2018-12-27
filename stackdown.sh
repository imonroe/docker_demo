#!/bin/bash

#!/bin/bash

HOME_DIR=$PWD

# unload our application1 stack
cd stack_application1
docker-compose -f ./docker-compose.yml stop
cd $HOME_DIR

# finally, we unload our administration stack
docker-compose -f ./docker-compose.yml stop
