#!/bin/bash

echo "============================================"
echo "Updating submodules"
git submodule update --init
echo "============================================"
echo "Updating libpng, expat and fribidi"

rm -rf libogg-*
rm -rf libvorbis-*
rm -rf libpng-*
rm -rf expat-*
rm -rf fribidi-*
rm -rf lame-*

wget -O- http://downloads.xiph.org/releases/ogg/libogg-1.3.2.tar.gz | tar xz
wget -O- http://downloads.xiph.org/releases/vorbis/libvorbis-1.3.5.tar.xz | tar xJ
wget -O- ftp://ftp.simplesystems.org/pub/libpng/png/src/libpng16/libpng-1.6.23.tar.xz | tar xJ
wget -O- http://ufpr.dl.sourceforge.net/project/expat/expat/2.1.0/expat-2.1.0.tar.gz | tar xz
wget -O- http://fribidi.org/download/fribidi-0.19.7.tar.bz2 | tar xj
wget -O- http://ufpr.dl.sourceforge.net/project/lame/lame/3.99/lame-3.99.5.tar.gz | tar xz
echo "============================================"
