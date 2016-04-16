# Full Stack Docker Apache MySQL PHP Environment for Development

This Docker service provides a complete web server separated in three containers for your local development environment.

- Apache
- PHP 7
- MySQL

How to start:

```bash
git clone git@github.com:dominikwinter/damp.git
cd damp

# depends on your system
docker-machine start
eval $(docker-machine env)

# start containers
docker-compose up
```

Enter Docker Environment (eg. to install composer)

```bash
# depends on your system
docker-machine start
eval $(docker-machine env)

# enter docker environment
docker exec -it damp_web_1 bash

# install composer
curl -s http://getcomposer.org/installer | php
mv composer.phar /usr/local/bin/composer
```
