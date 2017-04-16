# gajim-omemo in Docker

## Build

```
docker build -t gajim-omemo-docker .
```

## Run

Create a directory _gajim_, then run:

```
docker run -ti --rm -e DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix -v ~/gajim:/home/gajim  -e uid=$(id -u) -e gid=$(id -g)  gajim-omemo-docker
```
