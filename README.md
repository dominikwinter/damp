# Full Stack Docker Apache MySQL PHP Environment

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
