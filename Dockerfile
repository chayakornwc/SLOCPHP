FROM ubuntu:lastest				
MAINTAINER whitecat.chayakorn@gmail.com
ive
RUN apt-get update && \
	apt-get install -y openssh-server && \
	 apt-get -qq update &&\
	 apt-get install -y  nginx php7.1-fpm
	
