FROM centos:latest
MAINTAINER 754060604@qq.com
RUN ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime
RUN yum install -y gcc gcc-c++ git

RUN mkdir /download && wget https://nodejs.org/dist/v10.14.1/node-v10.14.1.tar.gz /download/ \
tar xvf /download/node-v10.14.1.tar.gz && cd /download/node-v10.14.1 && ./configure && make && make install

CMD ["/usr/sbin/init"]