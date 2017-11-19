FROM alpine:latest
    
WORKDIR /frp

ADD ./frp_0.13.0_linux_amd64.tar.gz /frp/

RUN chmod +x /frp/frps && chmod +x /frp/frpc