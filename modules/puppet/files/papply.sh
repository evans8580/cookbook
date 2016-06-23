#!/bin/sh
sudo puppet apply /home/evans/puppet/manifests/site.pp --modulepath=/home/evans/puppet/modules/ $*
