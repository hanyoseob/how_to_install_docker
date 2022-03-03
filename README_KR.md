# 도커 설치하는 법
- 자세한 사항은 아래의 도커 레퍼런스를 참고하세요. 
  - [EN] https://docs.docker.com/reference/
  
  - [KR] https://subicura.com/2017/01/19/docker-guide-for-beginners-1.html
  - [KR] https://www.44bits.io/ko/post/easy-deploy-with-docker

---
## 1. ***도커 이미지*** 를 생성 (`build`) 하는 법?

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

## 2. 생성된 ***도커 이미지*** 를 확인 (`check`) 하는 법?  

### General command
```
$ sudo docker images 
```
생성된 도커 이미지들의 리스트를 확인할 수 있음.

---

## 3. ***도커 컨테이너*** 를 생성 (`create`) 하는 법?

### General command
```
$ sudo docker create [OPTIONS] IMAGE[:TAG|@DIGEST] [COMMAND] [ARG...]
```

### *Example command
```
$ sudo docker create -i -t -p 8999-9000:8999-9000 -v '/home':'/home' -v '/home/local/PARTNERS/yh880/mnt/women_health_internal/DBT/yh880/workspace':'/workspace' --shm-size 4gb --gpus all --name ge_bpm_classification ge_bpm
```

`--volume, -v` Bind mount a volume \
`--publish, -p` Publish a container's port(s) to the host \
`--shm-size` Size of /dev/shm \
`--gpus` GPU devices to add to the container ('all' to pass all GPUs)\
(https://docs.docker.com/reference/)

## 4. 생성된 ***도커 컨테이너*** 를 확인 (`check`) 하는 법?

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

---
## 5. 생성된 ***도커 컨테이너*** 를 시작 (`start`) 하는 법?

### General command
```
$ sudo docker start [OPTIONS] CONTAINER [CONTAINER...]
```

### *Example command
```
$ sudo docker start ge_bpm_classification
```

---
## 6. 생성된 ***도커 컨테이너*** 에 접속 (`attach`) 하는 법?

### General command
```
$ sudo docker attach [OPTIONS] CONTAINER
```

### *Example command
```
$ sudo docker attach ge_bpm_classification
```

---
## 7. ***도커 컨테이너*** 를 실행 (`run`) 하는 법? (생성: `create`, 시작: `start`, and 접속: `attach` 를 모두 포함)

### General command
```
$ sudo docker run [OPTIONS] IMAGE[:TAG|@DIGEST] [COMMAND] [ARG...]
```

### *Example command
```
$ sudo docker run -i -t -p 8999-9000:8999-9000 -v '/home':'/home' -v '/home/local/PARTNERS/yh880/mnt/women_health_internal/DBT/yh880/workspace':'/workspace' --shm-size 4gb --gpus all --name ge_bpm_classification ge_bpm
```
`--volume, -v` Bind mount a volume \
`--publish, -p` Publish a container's port(s) to the host \
`--shm-size` Size of /dev/shm \
`--gpus` GPU devices to add to the container ('all' to pass all GPUs)\
(https://docs.docker.com/reference/)

---
## 8. 생성된 ***도커 컨테이너*** 를 중지 (`stop`) 하는 법?

### General command
```
$ sudo docker stop [OPTIONS] CONTAINER [CONTAINER_ID...] 
```

### *Example command
```
$ sudo docker stop ge_bpm_classification
```

---
## 9. 생성된 ***도커 컨테이너*** 를 중지 (`stop`) 없이 빠져나오는 법?

### General command
```
Ctrl + p + q
```

---
## 10. 생성된 ***도커 컨테이너*** 를 제거 (`remove`) 하는 법?

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
## 11. 생성된 ***도커 이미지*** 를 제거 (`remove`) 하는 법?

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