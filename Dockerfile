FROM duckll/base

COPY lnmp.sh /etc/my_init.d/lnmp.sh
COPY install.conf /tmp/install.conf

EXPOSE 80

# apt-get
RUN apt update \
&& apt -y install \
   net-tools \

# install lnmp
&& cd /tmp \
&& wget http://soft.vpser.net/lnmp/lnmp1.6.tar.gz && tar -xvf ./lnmp1.6.tar.gz \
&& cd lnmp1.6 && cat /tmp/install.conf | ./install.sh \

# set lnmp start
&& chmod +x /etc/my_init.d/lnmp.sh

# cleanup
&& apt clean \
&& rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
