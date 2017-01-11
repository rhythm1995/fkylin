#!/bin/sh


# install jdk
apt-get update
apt-get install openjdk-7-jre openjdk-7-jdk

#install hadoop
cd /usr/local
echo "Which hadoop do you want need?(Please input 1,2,3, default 2)"
echo "1:hadoop-1.2.1 : 早期版本"
echo "2:hadoop-2.7.2 : 默认版本"
echo "3:hadoop-3.0.0(alphal) : 最新试用版本"
hadoop_url = "http://mirror.bit.edu.cn/apache/hadoop/common/hadoop-2.7.3/hadoop-2.7.3.tar.gz"
hadoop-1.2.1_path = "http://mirror.bit.edu.cn/apache/hadoop/common/hadoop-1.2.1/hadoop-1.2.1.tar.gz"
hadoop-2.7.2_path = "http://mirror.bit.edu.cn/apache/hadoop/common/hadoop-2.7.3/hadoop-2.7.3.tar.gz"
hadoop-3.0.0-alphal_path = "http://mirror.bit.edu.cn/apache/hadoop/common/hadoop-3.0.0-alpha1/hadoop-3.0.0.tar.gz"
read hadoop
if [ $hadoop = 1 ]
then
   $hadoop_url = ${hadoop-1.2.1_path}
elif [ $hadoop = 2 ]
then
   $hadoop_url = ${hadoop-2.7.2_path}
elif [ $hadoop = 3 ]
then
   $hadoop_url = ${hadoop-3.0.0-alphal_path}
else
   $hadoop_url = ${hadoop-2.7.2_path}
fi
wget ${hadoop_url}
