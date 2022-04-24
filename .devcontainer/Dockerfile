FROM ubuntu:20.04

ARG DEBIAN_FRONTEND=noninteractive

RUN apt update && \
    apt install -y gcc g++ python3.8 python3-pip pypy3 nodejs npm git

# boostが非常に重いので、必要ないかもしれない
RUN cd && git clone --recursive https://github.com/boostorg/boost.git /lib/boost && \
    cd /lib/boost && ./bootstrap.sh && ./b2 install -j2 --prefix=/opt/boost/
RUN cd && git clone https://github.com/atcoder/ac-library.git /lib/ac-library

RUN pip install numpy
RUN pip install black

WORKDIR /root/problems