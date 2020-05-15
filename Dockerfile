FROM p21jgitlin/ruby-rpm:amzn2
LABEL MAINTAINER="Josh Gitlin <jgitlin@pinnacle21.com>"

ADD https://github.com/jgitlin-p21/ruby-rpm/releases/download/2.7.0/ruby-2.7.0-1.amzn2.x86_64.rpm /tmp/ruby.rpm
ADD https://github.com/jgitlin-p21/ruby-rpm/releases/download/2.7.0/ruby-2.7.0-1.amzn2.src.rpm /tmp/ruby-src.rpm

COPY setup.sh /tmp
RUN /bin/bash /tmp/setup.sh

WORKDIR /var/workdir
