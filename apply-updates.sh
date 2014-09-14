#!/bin/sh

apt-get update

# this deals with a dependency issue in ubuntu/trusty64 vagrant box
apt-get -y --force-yes install python3-distupgrade=1:0.220.4 ubuntu-release-upgrader-core=1:0.220.4

apt-get -y upgrade
