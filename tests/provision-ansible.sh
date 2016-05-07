#!/bin/bash
set -e
source ~travis/virtualenv/python2.7/bin/activate
vagrant provision ${VM} --provision-with ansible
