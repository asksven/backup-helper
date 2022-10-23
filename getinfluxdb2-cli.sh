#!/bin/bash

ARCH=$(uname -m)
case $ARCH in
    armv5*) ARCH="armv5";;
    armv6*) ARCH="armv6";;
    armv7*) ARCH="arm";;
    aarch64) ARCH="arm64";;
    x86) ARCH="386";;
    x86_64) ARCH="amd64";;
    i686) ARCH="386";;
    i386) ARCH="386";;
esac

echo "ARCH is $ARCH"
curl -LO https://dl.influxdata.com/influxdb/releases/influxdb2-client-2.4.0-linux-${ARCH}.tar.gz
tar xvzf influxdb2-client-2.4.0-linux-${ARCH}.tar.gz
mv influxdb2-client-2.4.0-linux-${ARCH}/influx /usr/local/bin/
rm -rf influxdb2-client-2.4.0-linux-${ARCH}
chmod +x /usr/local/bin/influx
