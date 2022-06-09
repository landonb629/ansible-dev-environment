FROM ubuntu:18.04 as BUILD

RUN apt update && \
    apt-get install -y ansible && \
    apt-get install -y vim && \
    apt-get install -y ssh

RUN mkdir /etc/ansible/inventories 

RUN service ssh start
RUN useradd -rm -d /home/ansible -s /bin/bash -g root -G sudo -u 1001 ansible && \
    echo 'ansible:ansible' | chpasswd


ADD inventories/ /etc/ansible/inventories
