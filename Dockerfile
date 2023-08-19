FROM btpanel/bt
MAINTAINER YourName <your_email@example.com>


pull baotaos/bt-ubuntu:latest
docker run -d --name bt-panel -p 8888:8888 baotaos/bt-ubuntu:latest
EXPOSE 8888
