FROM ubuntu:14.04
MAINTAINER Derren Desouza <derrend@yahoo.co.uk>

RUN apt-get update && \
    apt-get install -y python python-setuptools git && \
    cd /tmp && \
    git clone https://github.com/cryptoproofinfo/pycoin.git && \
    cd /tmp/pycoin && \
    python setup.py install && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
