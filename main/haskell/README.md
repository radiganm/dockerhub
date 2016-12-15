## Haskell Platform

# haskell
```bash
xhost +
docker run \
  -v /tmp/.X11-unix:/tmp.X11-unix:ro \
  -v /my/path:/data \
  -it radiganm/haskell
```
