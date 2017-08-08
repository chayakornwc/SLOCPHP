FROM ubuntu:latest				
MAINTAINER whitecat.chayakorn@gmail.com

RUN apt-get update && \
	apt-get install -y openssh-server && \
	 apt-get  update &&\
	 apt-get install -y  nginx 
RUN apt-get install php7.1 -y
