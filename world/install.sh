#!/bin/sh

mkdir mangos
cd mangos
git clone --recursive http://github.com/mangosthree/server.git
cd server
git clone --recursive http://github.com/mangosthree/scripts.git src/bindings/scripts
git apply src/bindings/scripts/patches/MaNGOS-*-ScriptDev2.patch

mkdir objdir
cd objdir
cmake .. -DCMAKE_INSTALL_PREFIX=/opt/mangos-server
make
make install

chmod +x mangosd