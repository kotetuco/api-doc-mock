# API Doc Mock

## A Docker container for API Blueprint.

The container can be API document server and mock server.

## How to use this image?

1. Install Docker.
2. Cloning this repository.
3. Make `apidocs` directory and add API document (compliant API Blueprint format).
4. Run `docker-compose` command.
```
docker-compose build
docker-compose up
```
or
```
docker-compose build
docker-compose up -d
docker-compose logs
```
5. `docker-compose stop` command can stop this container.

## See also

- https://apiblueprint.org/
- http://qiita.com/kobaboy/items/5c5287fddb334b704dcc
