# Full Stack Docker Apache MySQL PHP Environment for Development

This Docker service provides a complete web server separated in three containers for your local development environment.

- Apache 2.4
- PHP 5.6 or PHP 7.0 (can be configured in docker-compose.yml)
- XDebug 2.4
- MariaDB 10.1
- Composer

How to start:

```bash
git clone git@github.com:dominikwinter/damp.git
cd damp

# depends on your system
docker-machine start
eval $(docker-machine env)

# start containers
docker-compose up -d
```

Enter Docker Environment (eg. to install composer)

```bash
# depends on your system
docker-machine start
eval $(docker-machine env)

# enter docker environment
docker exec -it damp_web_1 bash
```
