#!/bin/bash

cd ~/Downloads \
&& git clone https://github.com/grpc/grpc.git \
&& cd grpc \
&& git checkout v1.18.0 \
&& git submodule update --init \
&& rm -rf build \
&& mkdir build \
&& cd build \
&& cmake .. \
&& make -j$(nproc) PROTOC=/usr/bin/protoc \
&& sudo make install \
&& cd ~/Downloads/grpc \
&& make -j$(nproc) \
&& sudo make install \
&& sudo ldconfig

