FROM python
MAINTAINER niuhp niuhp_dev@126.com
RUN cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime
RUN pip install shadowsocks
### 这是为了修改一个bug
RUN sed -i 's/EVP_CIPHER_CTX_cleanup/EVP_CIPHER_CTX_reset/g' /usr/local/lib/python3.7/site-packages/shadowsocks/crypto/openssl.py
WORKDIR /usr/local/shadowsocks
ADD config.json ./
EXPOSE 8000
CMD ssserver -c config.json start
