#!/bin/ksh 

set -e

cd $UROOT/scripts
crontab crontab

$PROOT/apache2/bin/apachectl restart
$PROOT/src/tomcat/bin/shutdown.sh
$PROOT/src/tomcat/bin/startup.sh

