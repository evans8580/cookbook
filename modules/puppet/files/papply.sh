#!/bin/sh
sudo puppet apply /home/evans/cookbook/puppet/manifests/site.pp --modulepath=/home/evans/cookbook/puppet/modules/ $*
