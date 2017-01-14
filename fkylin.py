import os

print "---------------------------------------------"
print "welcome to use fkylin script,this script can auto install java1.8,hadoop2.6.5,hbase1.1.8,hive2.0.1,kylin1.5.3 in linux"
print "write by bugzhang"
print "github-https://github.com/rhythm1995/fkylin"
print "______ _          _ _       "
print "|  ___| |        | (_)      "
print "| |_  | | ___   _| |_ _ __  "
print "|  _| | |/ / | | | | | '_ \ "
print "| |   |   <| |_| | | | | | |"
print "\_|   |_|\_\\__, |_|_|_| |_|"
print "             __/ |          "
print "            |___/           "
print "---------------------------------------------"

print "Which linux release version do you use?(1 or 2 or 3)"
print "0.Auto get(form /etc/issue)"
print "1.centos 6+"
print "2.ubuntu 14.4+"
print "3.debian 8+"
print "we can not support other release version"


etc_issue = open('/etc/issue')
linux_release_etc = etc_issue.readline()


linux_release_version = raw_input()
if (linux_release_version != 1) or (linux_release_version != 2) or (linux_release_version != 3):
    print  "please input 1 or 2 or 3"

if linux_release_version == 1:
    print "Start install in Centos"
    os.system("yum update")
    os.system("yum install java-1.8.0-openjdk-devel.x86_64")
    os.system("wget http://mirror.bit.edu.cn/apache/hadoop/common/hadoop-/2.6.5/hadoop-2.6.5.tar.gz")
    os.system("wget http://mirror.bit.edu.cn/apache/hbase/1.1.8/hbase-1.1.8-bin.tar.gz")
    os.system("wget http://mirror.bit.edu.cn/apache/hive/hive-2.0.1/apache-hive-2.0.1-bin.tar.gz")
    os.system("wget http://mirror.bit.edu.cn/apache/kylin/apache-kylin-1.5.3/apache-kylin-1.5.3-bin.tar.gz")

os.system("tar -zxvf hadoop-2.6.5.tar.gz")
os.system("tar -zxvf hbase-1.1.8-bin.tar.gz")
os.system("tar -zxvf apache-hive-2.0.1-bin.tar.gz")
os.system("apache-kylin-1.5.3-bin.tar.gz")
os.system("mv hadoop-2.6.5.tar.gz hadoop")
os.system("mv apache-hive-2.0.1-bin.tar.gz hive")
os.system("mv hbase-1.1.8-bin.tar.gz")
os.system("mv apache-kylin-1.5.3-bin.tar.gz kylin")