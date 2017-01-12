#!/bin/sh


# install jdk
apt-get update
apt-get install openjdk-7-jre openjdk-7-jdk

yum update
yum install java-1.8.0-openjdk-devel.x86_64

# install hadoop
cd /usr/local
wget http://mirror.bit.edu.cn/apache/hadoop/common/hadoop-2.6.5/hadoop-2.6.5.tar.gz
tar -zxvf hadoop-2.6.5.tar.gz


# install hbase
wget http://mirror.bit.edu.cn/apache/hbase/1.1.8/hbase-1.1.8-bin.tar.gz
tar -zxvf hbase-1.1.8-bin.tar.gz


#install hive



#install kylin
wget http://mirror.bit.edu.cn/apache/kylin/apache-kylin-1.5.3/apache-kylin-1.5.3-bin.tar.gz
