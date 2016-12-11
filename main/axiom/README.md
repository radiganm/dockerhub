## Axiom 
# The Scientific Computation System
see http://axiom-developer.org

# Axiom without HyperDoc
```bash
xhost +
docker run \
  --security-opt seccomp=unconfined \
  -v /tmp/.X11-unix:/tmp.X11-unix:ro \
  -v /my/path:/data \
  -it radiganm/axiom axiom
```

# Axiom with HyperDoc
```bash
xhost +
docker run \
  --security-opt seccomp=unconfined \
  -v /tmp/.X11-unix:/tmp.X11-unix:ro \
  -v /my/path:/data \
  -it radiganm/axiom axiom-ht
```
