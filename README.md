### 直接使用镜像

```shell
docker run --name shadowdocks -p 8000:8000 daocloud.io/niuhp/shadowdocks
```  

默认配置如下  

```shell
{
  "server":"0.0.0.0",
  "server_port":8000,
  "local_port":1080,
  "password":"www.niuhp.com",
  "timeout":600,
  "method":"aes-256-cfb"
}
```  

### 使用自定义配置

创建自己的配置文件 `config.json` 然后使用以下命令运行：  

```shell
docker run --name shadowdocks -p ${宿主机端口号}:${你配置文件中的端口号}\
 -v /path/to/your_config.json:/usr/local/shadowsocks/config.json:ro\
 daocloud.io/niuhp/shadowdocks
```  

