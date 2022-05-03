# zt-backup
Simple backup zerotier config files

Simple use
```
docker run -it -e INTERVAL=10 -v zt-controller:/volume/zt-ctrl -v /tmp:/backup maltegrosse/zt-backup:latest
```
where one environment variable is required:
- INTER (int for minutes)
and mount two folder inside the container, e.g. zt-controller and the local backup folder
Available on Dockerhub: https://hub.docker.com/r/maltegrosse/zt-backup
