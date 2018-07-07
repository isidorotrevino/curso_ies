#!/bin/bash
#export ANSIBLE_KEEP_REMOTE_FILES=1
#export ANSIBLE_LIBRARY=/usr/local/lib/python2.7/dist-packages/ansible/modules/
#export ANSIBLE_VAULT_PASSWORD_FILE=~/.gradle/ansible_pass.txt
#ansible-playbook -e projectdir=$PWD --vault-password-file=$ANSIBLE_VAULT_PASSWORD_FILE $@
export ANSIBLE_CONFIG=$PWD/config/ansible.cfg 
export ANSIBLE_INVENTORY=$PWD/config/ansible_hosts
export PROJECT_DIR=$PWD

ansible-playbook -e projectdir=$PWD $@