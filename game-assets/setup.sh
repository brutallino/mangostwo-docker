#!/bin/sh

mkdir mangos
cd mangos

git clone --recursive http://github.com/mangostwo/server.git

cd /tmp/server/dep/libmpq 
./autogen.sh
./configure
make

cd /tmp/server/contrib/extractor
cmake .
make

cp ad /game

