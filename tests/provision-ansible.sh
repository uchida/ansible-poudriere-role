#!/bin/bash
set -e
source ~travis/virtualenv/python2.7/bin/activate
/opt/vagrant/bin/vagrant provision ${VM} --provision-with ansible
