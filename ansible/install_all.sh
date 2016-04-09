#To make .kshrc ready at begining point 
ansible-playbook -b --become-user ucomm playbooks/makekshrc.yml

#install scripts:
ansible-playbook -b --become-user ucomm playbooks/install_zlib.yml
ansible-playbook -b --become-user ucomm playbooks/install_bzip2.yml
ansible-playbook -b --become-user ucomm playbooks/install_openssl.yml
ansible-playbook -b --become-user ucomm playbooks/install_curl.yml
ansible-playbook -b --become-user ucomm playbooks/install_perl.yml
ansible-playbook -b --become-user ucomm playbooks/install_git.yml
ansible-playbook -b --become-user ucomm playbooks/install_apache.yml
ansible-playbook -b --become-user ucomm playbooks/install_oracle_client.yml
ansible-playbook -b --become-user ucomm playbooks/install_php.yml
ansible-playbook -b --become-user ucomm playbooks/install_tomcat.yml

# deploy jenkins
ansible-playbook -b --become-user ucomm playbooks/deploy_jenkins.yml


#ansible-playbook -b --become-user ucomm playbooks/install_python.yml

#ansible-playbook -b --become-user ucomm playbooks/install_libmemcached.yml
#ansible-playbook -b --become-user ucomm playbooks/install_memcached.yml
#ansible-playbook -b --become-user ucomm playbooks/install_phpmemcached.yml
#ansible-playbook -b --become-user ucomm playbooks/install_nginx.yml
