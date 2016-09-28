FROM phusion/baseimage:latest

MAINTAINER DuckLL <a347liao@gmail.com>

EXPOSE 80

CMD ["/sbin/my_init"]

# apt-get
RUN apt-get update \
&& apt-get upgrade -y \
&& apt-get install -yq \
    vim \
    wget \
    net-tools \
&& apt-get clean

# install lnmp
RUN wget http://soft.vpser.net/lnmp/lnmp1.3.tar.gz && tar -xvf ./lnmp1.3.tar.gz \
&& cd lnmp1.3 && echo $'\n\n5\n6\n2\n\n' | ./install.sh \
&& cd ../ && rm -rf lnmp1.3.tar.gz lnmp1.3

# set lnmp start
RUN echo $'#!/bin/sh\nlnmp start' > /etc/my_init.d/lnmp.sh \
&& chmod +x /etc/my_init.d/lnmp.sh
