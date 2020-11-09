FROM pentesteracademy/lamp:php7-mysql-5.5

ENV DEBIAN_FRONTEND noninteractive

# Install Prereqs

RUN apt-get update \
    && apt-get -y install apache2-dev \
    automake \
    libcurl4-gnutls-dev \
    libpcre++-dev libtool \
    libxml2-dev \
    libyajl-dev \
    lua5.2-dev \
    pkgconf \
    ssdeep \
    wget \
    nano \
    net-tools \
    tar \
    vim \
    wget \
    php-xml \
    php-mysql \
    mysql-client 

#Installing php lists version 3.5.0
    
RUN mkdir /var/www/html/lists/
COPY files/app/lists/ /var/www/html/lists
COPY files/app/index.html /var/www/html
COPY files/mysql-setup.sh /root
COPY files/sql.dmp /root

RUN a2enmod rewrite

RUN service mysql start && \
    bash /root/mysql-setup.sh

