FROM alpine:latest
WORKDIR /frp/frp_0.21.0_linux_amd64
ADD https://github.com/fatedier/frp/releases/download/v0.21.0/frp_0.21.0_linux_amd64.tar.gz /frp/
ADD ./start.sh /frp/start.sh
RUN tar zxf -C /frp/ /frp/frp_0.21.0_linux_amd64.tar.gz \
    && chmod +x /frp/frp_0.21.0_linux_amd64/frps \
    && chmod +x /frp/frp_0.21.0_linux_amd64/frpc \
    && chmod +x /frp/start.sh
ENTRYPOINT ["/frp/start.sh"]
