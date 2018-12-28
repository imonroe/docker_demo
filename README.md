## Docker Demo

Here's a recipe for standing up a docker server quickly.

### Stacks

There are a variety of stacks here:

 - stack_admin: uses the `docker-compose.yml` in the root of the project.  This contains basic stuff like Portainer, Traefik, and Watchtower
 - stack_application1: a basic setup for a generic PHP/Nginx/MySQL project.
 - stack_frontpage: Just nginx serving a single static page for the front page.
 - stack_laravel: a basic setup for a laravel project
 - stack_stats: a stack for monitoring the docker host, docker containers, and so forth
 - stack_wordress: a basic setup for a wordpress site

### Helper scripts

`stackup.sh` and `stackdown.sh` are quickie helper scripts for bringing up the entire collection of stacks at once.  Modify them to include any additional stacks.
