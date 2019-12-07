# docker-frp
Alpine based light-weight frpc/frps docker image for reverse proxy (also tested in Synology DSM).

## How to use
### Run in  client mode 
docker run -d --name frpserver -v /your/local/frpc.ini:/frp/frpc.ini giejqf/docker-frp  

### Run in server mode
docker run -d --name frpserver -v /your/local/frps.ini:/frp/frps.ini giejqf/docker-frp