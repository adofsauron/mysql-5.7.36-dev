#!/bin/bash

HERE=`pwd`

cd mysql-server-mysql-5.7.36

mkdir -p build
cd build
rm ./* -rf

# CMAKE
cmake .. -DCMAKE_BUILD_TYPE=Debug -DDOWNLOAD_BOOST=1  -DWITH_BOOST=../boost

# MAKE
make -j`nproc`

# INSTALL
make install

# reback
cd $HERE
