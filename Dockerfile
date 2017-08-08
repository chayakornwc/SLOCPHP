FROM php:7.1-fpm
MAINTAINER whitecat.chayakorn@gmail.com
RUN DEBIAN_FRONTEND=noninteractive
RUN apt-get update && \
	apt-get install -y openssh-server && \
	RUN apt-get -qq update &&\
	 apt-get install -y  nginx 
	
