#!/bin/bash

cd ~/Downloads/googletest \
&& mkdir build \
&& cd build \
&& cmake .. \
&& make -j$(nproc) \
&& sudo make install \
&& sudo ldconfig

