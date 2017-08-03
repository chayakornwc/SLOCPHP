FROM ubuntu
MAINTAINER whitecat.chayakorn@gmail.com
RUN apt-get update && \
	apt-get install -y openssh-server && \
	apt-get update && \
	apt-get install -y nginx && \
	add-apt-repository -y -u ppa:ondrej/php && \
	apt-get update && \
	apt-get install -y php7.1-fpm 
