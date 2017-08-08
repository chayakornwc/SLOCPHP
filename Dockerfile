FROM ubuntu:latest				
MAINTAINER whitecat.chayakorn@gmail.com

RUN apt-get update && \
	apt-get install -y openssh-server && \
	 apt-get  update &&\
	 apt-get install -y  nginx &&
	 apt-get install -y software-properties-common python-software-properties
RUN	add-apt-repository ppa:ondrej/php  && \
	apt-get update	 
RUN	apt-get -y install php7.0-fpm php7.0-mysql php7.0-curl php7.0-mcrypt php7.0-cli php7.0-dev php-pear libsasl2-dev	
	
