#!/bin/bash
 
cd ~/Downloads/grpc \
&& make -j$(nproc) \
&& sudo make install \
&& sudo ldconfig


