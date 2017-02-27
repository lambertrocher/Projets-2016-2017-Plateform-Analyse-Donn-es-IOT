#!/bin/bash



chmod +rx test.r
./test.r


# start grafana server
#/etc/init.d/grafana-server start

# run InfluxDB
#/usr/bin/influxd 

# curl -G http://localhost:8086/query --data-urlencode "q=CREATE DATABASE mydb"

# curl -i -XPOST 'http://localhost:8086/write?db=mydb' --data-binary 'cpu_load_short,host=server01,region=us-west

