#!/bin/bash

cd ~/Downloads \
&& git clone https://github.com/protocolbuffers/protobuf.git \
&& cd protobuf \
&& ./autogen.sh \
&& ./configure --prefix=/usr \
&& make -j$(nproc) \
&& sudo make install \
&& sudo ldconfig \
&& sudo rm -f /usr/lib/x86_64-linux-gnu/libprotobuf.so \
&& sudo ln -s /usr/lib/libprotobuf.so /usr/lib/x86_64-linux-gnu/libprotobuf.so

