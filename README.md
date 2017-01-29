# gajim-omemo in Docker

To run, try:

```
docker run -ti -e DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix -v gajim:/home/gajim  -e uid=$(id -u) -e gid=$(id -g)  gajim-omemo
```


