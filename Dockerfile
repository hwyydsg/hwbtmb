FROM ubuntu:latest


RUN apt-get update && \
    apt-get install -y curl wget


RUN wget -O install.sh http://download.bt.cn/install/install-ubuntu_6.0.sh && \
    echo y | bash install.sh


EXPOSE 8888


CMD /etc/init.d/bt start && tail -f /dev/null