FROM alpine:latest

RUN apk add --no-cache python3 py3-pip

WORKDIR /app

COPY . .

RUN pip install --no-cache-dir shadowsocks

CMD ss-server -s 0.0.0.0 -p $PORT -k $PASSWORD -m $METHOD
