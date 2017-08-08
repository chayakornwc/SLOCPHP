FROM ubuntu:latest				
MAINTAINER whitecat.chayakorn@gmail.com

RUN apt-get update && \
	apt-get install -y openssh-server && \
	 apt-get  update &&\
	 apt-get install -y  nginx 
RUN apt-get update && \
    apt-get install -y software-properties-common python-software-properties && \
    add-apt-repository -y -u ppa:ondrej/php && \
    apt-get update && \
    apt-get install -y imagemagick graphicsmagick && \
    apt-get install -y php7.0-bcmath php7.0-bz2 php7.0-cli php7.0-common php7.0-curl php7.0-dba  php7.0-fpm php7.0-gd php7.0-gmp php7.0-imap php7.0-intl php7.0-ldap php7.0-mbstring php7.0-mcrypt php7.0-mysql php7.0-odbc php7.0-pgsql php7.0-recode php7.0-snmp php7.0-soap php7.0-sqlite php7.0-tidy php7.0-xml php7.0-xmlrpc php7.0-xsl php7.0-zip && \
    apt-get install -y php-gnupg php-imagick php-mongodb php-streams php-fxsl && \
    mkdir /tmp/composer/ && \
