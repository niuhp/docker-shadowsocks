FROM centos:7
MAINTAINER niuhp niuhp_dev@126.com
ENV LANG en_US.utf8
RUN yum -y update
RUN cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime
RUN curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py && python get-pip.py
RUN pip install shadowsocks
WORKDIR /usr/local/shadowsocks
ADD config.json ./
EXPOSE 8000
CMD ssserver -c config.json start
