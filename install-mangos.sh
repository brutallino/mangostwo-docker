#!/bin/sh

mkdir mangos
cd mangos

git clone --recursive http://github.com/mangostwo/server.git

cd server

mkdir objdir
cd objdir

cmake .. -DCMAKE_INSTALL_PREFIX=/opt/mangos-server -DACE_USE_EXTERNAL=1
make
make install