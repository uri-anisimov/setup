#!/bin/bash

cd ~/Downloads \
&& git clone https://github.com/google/googletest.git \
&& cd googletest \
&& mkdir build \
&& cd build \
&& cmake .. \
&& make -j$(nproc) \
&& sudo make install \
&& sudo ldconfig

