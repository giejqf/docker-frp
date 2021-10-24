#!/bin/bash
CLIENTCFG="/frp/frpc.ini"
SERVERCFG="/frp/frps.ini"

if [ -f $CLIENTCFG ]; then
echo "Client config file found, starting frpc"
    /frp/frp_*_linux_amd64/frpc -c $CLIENTCFG
else
    echo "Client config file not found"
fi

if [ -f $SERVERCFG ]; then
    echo "Server config file found, starting frpc"
    /frp/frp_*_linux_amd64/frps -c $SERVERCFG
else
    echo "Server config file not found"
fi
