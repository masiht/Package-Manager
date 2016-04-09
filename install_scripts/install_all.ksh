#!/bin/ksh 

set -e

INSTALL_SCRIPTS=$PROOT/src/install_scripts

ksh $INSTALL_SCRIPTS/install_zlib.ksh
ksh $INSTALL_SCRIPTS/install_bzip2.ksh
ksh $INSTALL_SCRIPTS/install_openssl.ksh
ksh $INSTALL_SCRIPTS/install_curl.ksh
ksh $INSTALL_SCRIPTS/install_perl.ksh
ksh $INSTALL_SCRIPTS/install_git.ksh

#ksh $INSTALL_SCRIPTS/checkout_downloads.ksh

ksh $INSTALL_SCRIPTS/install_apache.ksh
ksh $INSTALL_SCRIPTS/install_oracle_client.ksh
ksh $INSTALL_SCRIPTS/install_php.ksh
ksh $INSTALL_SCRIPTS/install_tomcat.ksh
ksh $INSTALL_SCRIPTS/install_python.ksh

ksh $INSTALL_SCRIPTS/setup_dirs.ksh
ksh $INSTALL_SCRIPTS/setup_php.ksh
ksh $INSTALL_SCRIPTS/setup_repos.ksh

ksh $INSTALL_SCRIPTS/start_services.ksh


