#!/bin/ksh 

set -e

#java
cd $PROOT/src
tar xvf download/jre-8u20-linux-x64.gz
rm -f jre
ln -s jre1.8.0_20 jre

#tomcat
cd $PROOT/src
tar xvf download/apache-tomcat-8.0.26.tar.gz
rm -f tomcat
ln -s apache-tomcat-8.0.26 tomcat

#mv $PROOT/src/tomcat/conf/server.xml $PROOT/src/tomcat/conf/server.xml.orig
#cp $PROOT/src/overwrites/server.xml $PROOT/src/tomcat/conf/server.xml
