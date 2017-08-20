FROM duckll/base

MAINTAINER DuckLL <a347liao@gmail.com>

EXPOSE 80

# apt-get
RUN apt-fast update \
&& apt-fast -y install \
   net-tools \
&& apt-fast clean \

# install lnmp
&& wget -c http://soft.vpser.net/lnmp/lnmp1.4.tar.gz && tar -zxf ./lnmp1.4.tar.gz \
&& cd lnmp1.4 && wget https://raw.githubusercontent.com/DuckLL/lnmp/master/php5/install.conf && cat install.conf | ./install.sh \
&& cd ../ && rm -rf lnmp1.4.tar.gz lnmp1.4 \

# set lnmp start
&& wget https://raw.githubusercontent.com/DuckLL/lnmp/master/lnmp.sh -O /etc/my_init.d/lnmp.sh \
&& chmod +x /etc/my_init.d/lnmp.sh
