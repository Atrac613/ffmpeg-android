#!/bin/bash

. abi_settings.sh $1 $2 $3

pushd libvorbis-1.3.5

make clean

./configure \
  --disable-dependency-tracking \
  --with-pic \
  --host="$NDK_TOOLCHAIN_ABI" \
  --enable-static \
  --disable-shared \
  --prefix="${TOOLCHAIN_PREFIX}" || exit 1

make -j${NUMBER_OF_CORES} install || exit 1

popd
