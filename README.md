# Docker Symfony client

Docker images build to execute symfony-cli with different php version.

## Docker hub
https://hub.docker.com/r/itroom/docker-symfony-cli

## Getting Started

These instructions will cover usage information and for the docker container

### Prerequisities


In order to run this container you'll need docker installed.

* [Windows](https://docs.docker.com/windows/started)
* [OS X](https://docs.docker.com/mac/started/)
* [Linux](https://docs.docker.com/linux/started/)

### Usage

In order to initialize a new Symfony project, you can use the following command :

```shell
docker run --rm -v $PWD:/app itroom/docker-symfony-cli:latest new --no-git projectName
```

In order to use a different php version, you can use the following command :

```shell
# Create project with php 7.4
docker run --rm -v $PWD:/app itroom/docker-symfony-cli:7.4 new --no-git projectName
# Create project with php 8.0
docker run --rm -v $PWD:/app itroom/docker-symfony-cli:8.0 new --no-git projectName
# Create project with php 8.1 (same as latest)
docker run --rm -v $PWD:/app itroom/docker-symfony-cli:8.1 new --no-git projectName
```

## Authors

* **Gregory LEFER** - *Lead dev* - [GleItroom](https://github.com/gleitroom)

## License

This project is licensed under the MIT License - see the [LICENSE.md](LICENSE.md) file for details.
