#!/bin/ksh 

set -e

cd $UROOT

mkdir -p data
mkdir -p data/cert    #apple certificates, and repository for system certificates
mkdir -p data/webphone  #transfer directory for webphone data pull
mkdir -p data/content    #content directories
mkdir -p data/content_archive
mkdir -p data/content_pending
mkdir -p data/content_cleanup


#AFTER you have created the htdocs directory (in 
mkdir -p webserver/htdocs
mkdir -p webserver/webapps

cd $UROOT
mkdir -p scripts log bkup

