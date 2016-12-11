## uzbl 
# The uzbl web interface tools
see https://www.uzbl.org

# uzbl-tabbed
```bash
xhost +
docker run \
  -v /tmp/.X11-unix:/tmp.X11-unix:ro \
  -v /my/path:/data \
  -it radiganm/uzbl uzbl-tabbed
```

# uzbl-browser
```bash
xhost +
docker run \
  -v /tmp/.X11-unix:/tmp.X11-unix:ro \
  -v /my/path:/data \
  -it radiganm/uzbl uzbl-browser
```
