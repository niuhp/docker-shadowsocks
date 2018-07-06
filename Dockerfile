FROM python
MAINTAINER niuhp niuhp_dev@126.com
RUN cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime
RUN pip install shadowsocks
WORKDIR /usr/local/shadowsocks
ADD config.json ./
EXPOSE 8000
CMD ssserver -c config.json start
