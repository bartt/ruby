FROM bartt/ubuntu-base
MAINTAINER Bart Teeuwisse <bart@thecodemill.biz>

RUN cd /tmp && \
    curl -O http://ftp.ruby-lang.org/pub/ruby/2.1/ruby-2.1.3.tar.gz && \
    tar -xzvf ruby-2.1.3.tar.gz && \
    cd ruby-2.1.3/ && \
    ./configure && \
    make && \
    sudo make install && \
    cd /tmp && \
    rm -rf ruby-2.1.3* && \
    gem install bundler
