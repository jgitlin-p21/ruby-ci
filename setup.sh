#!/bin/bash

set -e
set -x

# Install Ruby and dependencies
/bin/rpm -i /tmp/ruby-src.rpm
/bin/rpm -i /tmp/ruby.rpm
/bin/yum -y install curl make readline-devel ncurses-devel openssl-devel \
      libyaml-devel libffi-devel zlib-devel

# Create a working directory
mkdir -p /var/workdir
chmod 777 /var/workdir

# Clean up for smaller image size
/bin/yum clean all && rm -rf /var/cache/yum
rm -f /tmp/setup.sh /tmp/ruby*.rpm
