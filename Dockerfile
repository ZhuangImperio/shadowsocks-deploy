FROM alpine:latest

# 安装稳定版 shadowsocks-rust
RUN apk add --no-cache shadowsocks-rust

# 启动服务，读取 Render 的环境变量
CMD ss-server -s 0.0.0.0 -p $PORT -k $PASSWORD -m $METHOD
