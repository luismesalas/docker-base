FROM ubuntu:xenial
MAINTAINER luismesalas
RUN apt-get update; apt-get install -y software-properties-common add-apt-key; add-apt-repository ppa:openjdk-r/ppa; apt-get update; apt-get upgrade; apt-get install -y unzip openjdk-7-jre-headless wget supervisor docker.io openssh-server
ENV JAVA_HOME /usr/lib/jvm/java-7-openjdk-amd64/
RUN echo 'root:luismesalas' | chpasswd
RUN mkdir /var/run/sshd
RUN sed -i 's/PermitRootLogin without-password/PermitRootLogin yes/' /etc/ssh/sshd_config

EXPOSE 22
