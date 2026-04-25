FROM alpine:3.20

# 直接安装 shadowsocks-rust
RUN apk add --no-cache shadowsocks-rust

# 启动命令
CMD ["ss-server", "-s", "0.0.0.0", "-p", "${PORT}", "-k", "${PASSWORD}", "-m", "${METHOD}"]
