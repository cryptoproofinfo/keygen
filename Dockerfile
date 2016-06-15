FROM alpine:3.4
MAINTAINER Derren Desouza <derrend@yahoo.co.uk>

RUN apk add --no-cache\
        git py-pip && \

    pip install --no-cache-dir \
        blockchain \
        git+https://github.com/cryptoproofinfo/pycoin.git
