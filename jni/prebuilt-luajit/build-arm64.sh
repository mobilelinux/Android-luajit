#!/bin/bash
NDK=/PATH/TO/NDK #replace with your ndk path, I use ndk r15c
NDKABI=21
NDKVER=$NDK/toolchains/aarch64-linux-android-4.9
NDKP=$NDKVER/prebuilt/linux-x86_64/bin/aarch64-linux-android-
NDKF="--sysroot $NDK/platforms/android-$NDKABI/arch-arm64/"
NDKARCH=
make  HOST_CC="gcc" CROSS=$NDKP TARGET_FLAGS="$NDKF $NDKARCH"
