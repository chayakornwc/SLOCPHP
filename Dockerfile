FROM ubuntu
MAINTAINER whitecat.chayakorn@gmail.com
RUN apt-get update && \
	apt-get install -y openssh-server && \
	apt-get update && \
	apt-get install -y nginx 
