#!/bin/bash

set -e
set -x

# Install Development tools, needed for building some gems
yum -y groupinstall "Development Tools"

# Install Ruby and dependencies
/bin/rpm -i /tmp/ruby-src.rpm
/bin/rpm -i /tmp/ruby.rpm
/bin/yum -y install curl make readline-devel ncurses-devel openssl-devel \
      libyaml-devel libffi-devel zlib-devel libxml2-devel

gem install bundler

# Create a working directory
mkdir -p /var/workdir
chmod 777 /var/workdir

# Clean up for smaller image size
/bin/yum clean all && rm -rf /var/cache/yum
rm -f /tmp/setup.sh /tmp/ruby*.rpm
