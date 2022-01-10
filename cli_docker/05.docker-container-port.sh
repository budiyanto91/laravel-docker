# docker create image
- docker image pull nginx:latest

# docker create container publish port host
- docker container create --name contohnginx --publish 8080:80 nginx:latest

atau

- docker container create --name contohnginx -p 8080:80 nginx:latest

# note :
# --publish posthost:portcontainer
