# Docker Apache MySQL PHP

This Docker service provides a complete web server separated in three containers for your local development environment.

- Apache + PHP 5.6 http://localhost:8080
- phpMyAdmin http://localhost:8181
- MySQL

How to start:

```bash
git clone git@github.com:dominikbechstein/damp.git
cd damp
docker-compose up
```

# TODOs
- permission problems with OSX
- phpmyadmin container is not needed -> will use Sequal Pro
- move TODOs to GitHub internal "Issues"
- ..
