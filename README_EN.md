# Installation the Docker 
- Please see the reference of the docker to check the more details. 
  - https://docs.docker.com/reference/

---
## 1. How to `build` the ***docker image** ?

### General command
```
$ docker build [OPTIONS] PATH | URL | -
```

### *Example command
```
$ sudo docker build -t ge_bpm .
```
`-t` or `--tag` is the option to set `the name of the container image`.

---

## 2. How to `check` the ***list of docker image***  

### General command
```
$ sudo docker images 
```

---

## 3. How to `check` the ***list of container*** ?

### General command
```
$ sudo docker ps [OPTIONS]
```

### *Example command
```
$ sudo docker ps
```
```
$ sudo docker ps -a
```
`-a` or `--all` shows containers including the exited containers.

---

## 4. How to `create` the ***container*** ?

### General command
```
$ sudo docker create [OPTIONS] IMAGE[:TAG|@DIGEST] [COMMAND] [ARG...]
```

### *Example command
```
$ sudo docker create -i -t -p 8999-9000:8999-9000 -v '/home':'/home' -v '/home/local/PARTNERS/yh880/mnt/women_health_internal/DBT/yh880/workspace':'/workspace' --shm-size 4gb --gpus all --name ge_bpm_detection ge_bpm
```

`--volume, -v` Bind mount a volume \
`--publish, -p` Publish a container's port(s) to the host \
`--shm-size` Size of /dev/shm \
`--gpus` GPU devices to add to the container ('all' to pass all GPUs)\
(https://docs.docker.com/reference/)

---
## 5. How to `start` the ***container*** ?

### General command
```
$ sudo docker start [OPTIONS] CONTAINER [CONTAINER...]
```

### *Example command
```
$ sudo docker start ge_bpm_detection
```

---
## 6. How to `attach` the ***container*** ?

### General command
```
$ sudo docker attach [OPTIONS] CONTAINER
```

### *Example command
```
$ sudo docker attach ge_bpm_detection
```

---
## 7. How to `run`, including `create`, `start` and `attach`, the ***container*** ?

### General command
```
$ sudo docker run [OPTIONS] IMAGE[:TAG|@DIGEST] [COMMAND] [ARG...]
```

### *Example command
```
$ sudo docker run -i -t -p 8999-9000:8999-9000 -v '/home':'/home' -v '/home/local/PARTNERS/yh880/mnt/women_health_internal/DBT/yh880/workspace':'/workspace' --shm-size 4gb --gpus all --name ge_bpm_detection ge_bpm
```
`--volume, -v` Bind mount a volume \
`--publish, -p` Publish a container's port(s) to the host \
`--shm-size` Size of /dev/shm \
`--gpus` GPU devices to add to the container ('all' to pass all GPUs)\
(https://docs.docker.com/reference/)

---
## 8. How to `remove` the ***container*** ?

### General command
```
$ sudo docker rm [OPTIONS] CONTAINER_ID [CONTAINER_ID...] 
```
### *Example command
```
$ sudo docker ps -a

... CHECK THE CONTAINER ID OF THE CONTAINER TO BE REMOVED

$ sudo docker rm ${CONTAINER_ID}
```
`sudo docker ps -a` is executed to check the `CONTAINER_ID`.

---
## 9. How to `remove` the ***docker image*** ?

### General command
```
$ sudo docker rmi [OPTIONS] IMAGE_ID [IMAGE_ID...] 
```
### *Example command
```
$ sudo docker images

... CHECK THE IMAGE ID OF THE IMAGE TO BE REMOVED

$ sudo docker rmi ${IMAGE_ID}
```
`sudo docker images` is executed to check the `IMAGE_ID`.

---