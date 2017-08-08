FROM ubuntu:latest				
MAINTAINER whitecat.chayakorn@gmail.com

RUN apt-get update && \
	apt-get install -y openssh-server && \
	 apt-get  update &&\
	 apt-get install -y  nginx &&\
	 apt-get install -y software-properties-common python-software-properties &&\
	add-apt-repository ppa:ondrej/php  && \
	apt-get update	 
RUN	apt-get -y install php7.1-fpm 
