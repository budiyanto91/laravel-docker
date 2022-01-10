# docker create image
- docker image pull mongo:latest

# docker create container publish port host setting environtment
- docker container create --name contohmongo --publish 27017:27017 --env MONGO_INITDB_ROOT_USERNAME=root --env MONGO_INITDB_ROOT_PASSWORD=root mongo:latest

atau

- docker container create --name contohmongo --publish 27017:27017 -e MONGO_INITDB_ROOT_USERNAME=root -e MONGO_INITDB_ROOT_PASSWORD=root mongo:latest
