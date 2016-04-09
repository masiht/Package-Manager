#!/bin/ksh 

set -e

#git clone https://ri267c@codecloud.web.att.com/scm/st_ucomm/scripts.git  $UROOT/scripts
#git clone https://ri267c@codecloud.web.att.com/scm/st_ucomm/uperform-plugins.git $UROOT/webserver/plugins
#git clone https://ri267c@codecloud.web.att.com/scm/st_ucomm/ucbackend.git $UROOT/webserver/htdocs/ucc
#git clone https://ri267c@codecloud.web.att.com/scm/st_ucomm/upbackend.git $UROOT/webserver/htdocs/upc
git clone https://ri267c@codecloud.web.att.com/scm/st_ucomm/uperform-ui.git $UROOT/webserver/htdocs/_youCoach
rm -f $UROOT/webserver/htdocs/youCoach
ln -s $UROOT/webserver/htdocs/_youCoach/youCoach $UROOT/webserver/htdocs/youCoach

