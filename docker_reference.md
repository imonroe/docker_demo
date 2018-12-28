Build:
`docker-compose up -d --build`

Unload:
`docker-compose down`

Delete orphans:
`docker-compose down --remove-orphans`

Delete cache and images:
`docker system prune -a`

Show active images:
`docker-compose ps`

Open bash for project:
`docker-compose exec project bash`

Load project multisite:
`docker-compose exec project sh -c "maintenance @legaldefence.local https://legaldefence.co.uk"`
`docker-compose exec project sh -c "maintenance @privacydefence.local https://privacydefence.co.uk"`

Add Drupal module package:
`docker-compose exec project sh -c "cd .. && composer require drupal/addtoany --prefer-stable"`

Update composer modules:

`docker-compose exec project sh -c "cd .. && composer update -n -o"`

Fix docker.sock issue on Windows (run in PowerShell):

`$Env:COMPOSE_CONVERT_WINDOWS_PATHS=1`

Install Windows build tools:

`npm install --global --production windows-build-tools`

Show all containers:

`docker ps -a`

Stop all running containers

`docker stop $(docker ps -aq)`

Remove all exited containers:

`docker rm $(docker ps -a -f status=exited -q)`

Remove all images:

`docker rmi $(docker images -aq)`

list all images:

`docker images -a`

list all volumes

`docker volume ls`

remove a specific volume

`docker volume rm volume_name volume_name`

list dangling volumes

`docker volume ls -f dangling=true`

remove dangling volumes

`docker volume prune`

remove a container and its volume

`docker rm -v container_name`

remove all networks

`docker network rm $(docker network ls |  awk '/ / { print $1 }')`

blow everything away

`docker stop $(docker ps -aq) && docker rm $(docker ps -a -f status=exited -q) && docker rmi $(docker images -aq) && docker volume prune && docker network rm $(docker network ls |  awk '/ / { print $1 }')`
