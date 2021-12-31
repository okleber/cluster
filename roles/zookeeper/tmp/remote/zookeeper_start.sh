#!/usr/bin/env bash

/zookeeper_config.py

cd /apache-zookeeper-3.5.9-bin
#java -cp zookeeper-3.5.9.jar:$(ls lib/slf4j-api-*.jar):$(ls lib/slf4j-log4j12-*.jar):$(ls lib/log4j-*.jar):conf org.apache.zookeeper.server.quorum.QuorumPeerMain /etc/zookeeper/zoo.cfg
ln -s /etc/zookeeper/zoo.cfg /apache-zookeeper-3.5.9-bin/conf/zoo.cfg
./bin/zkServer.sh start &
sleep 10
tail -f logs/*.out
