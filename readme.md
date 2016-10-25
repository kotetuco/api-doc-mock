# API Doc Mock

## A Docker container for API Blueprint.

The container can be API document server and mock server.

## How to use this image?

1. Install Docker.
1. Cloning this repository.
1. Make `apidocs` directory and add API document (compliant API Blueprint format).
1. Run `docker-compose` command.
 1. Start container :
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
 1. Stop container :
 ```
 docker-compose stop
 ```

## See also

- https://apiblueprint.org/
- http://qiita.com/kobaboy/items/5c5287fddb334b704dcc
