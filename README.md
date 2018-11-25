# docker-frp
Alpine based light-weight frpc/frps docker image for reverse proxy (also tested in Synology DSM).

## How to use
docker run -d --name frpserver -v /your/local/frpc.ini:/frp/frpc.ini giejqf/docker-frp  
docker run -d --name frpserver -v /your/local/frps.ini:/frp/frps.ini giejqf/docker-frp

Only mount one config file (fprc.ini or frps.ini) to run frp in corresponding mode (client or server).