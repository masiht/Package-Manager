#!/bin/ksh

set -e
# need to update .kshrc with the following:
#   PYTHONPATH=/opt/app/workload/ucomm/local/lib/python2.6/site-packages
#   ORACLE_HOME=/opt/app/workload/ucomm/local/src/instantclient
#   LD_LIBRARY_PATH=$ORACLE_HOME


#source ~/.kshrc

cd $PROOT/src
tar xvfz download/Python2.7.tgz
cd $PROOT/src/Python-2.7
export LDFLAGS="-L/opt/app/workload/ucomm/local/lib"
export LD_LIBRARY_PATH=/opt/app/workload/ucomm/local/lib:$LD_LIBRARY_PATH
export CPPFLAGS="-I/opt/app/workload/ucomm/local/include -I/opt/app/workload/ucomm/local/include/openssl"
./configure prefix=$PROOT --with-ssl
make
make install


# simple verification
PYTHON_TEST=`python -c  'print 1+1'`
if [[ $PYTHON_TEST -ne 2 ]];then
  print 'python not installed?'
  exit 1
fi

cd $PROOT
wget https://bootstrap.pypa.io/get-pip.py -O - | python

cd $PROOT/src
tar xvfz download/cx_Oracle-5.2.tar.gz
cd cx_Oracle-5.2
python setup.py install

pip -v install pandas
python -c 'import pandas'


