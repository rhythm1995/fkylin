#!/bin/sh

yum update
yum install java-1.8.0-openjdk-devel.x86_64

cd /usr/local
wget http://mirror.bit.edu.cn/apache/hadoop/common/hadoop-/2.6.5/hadoop-2.6.5.tar.gz
tar -zxvf hadoop-2.6.5.tar.gz

wget http://mirror.bit.edu.cn/apache/hbase/1.1.8/hbase-1.1.8-bin.tar.gz
tar -zxvf hbase-1.1.8-bin.tar.gz

#install hive
wget http://mirror.bit.edu.cn/apache/hive/hive-2.0.1/apache-hive-2.0.1-bin.tar.gz
tar -zxvf apache-hive-2.0.1-bin.tar.gz

#install kylin
wget http://mirror.bit.edu.cn/apache/kylin/apache-kylin-1.5.3/apache-kylin-1.5.3-bin.tar.gz
tar -zxcf apache-kylin-1.5.3-bin.tar.gz
