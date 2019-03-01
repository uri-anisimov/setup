#!/bin/bash

cd ~/Downloads \
&& git clone https://github.com/grpc/grpc.git \
&& cd grpc \
&& make -j$(nproc) \
&& sudo make install \
&& sudo ldconfig

