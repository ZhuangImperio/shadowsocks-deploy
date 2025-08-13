# 使用官方的 Shadowsocks 镜像
FROM mritd/shadowsocks

# 将本地配置文件复制到容器中
COPY shadowsocks-deploy/config.json /etc/shadowsocks-libev/config.json

# 启动 Shadowsocks 服务
CMD ["ss-server", "-c", "/etc/shadowsocks-libev/config.json"]
