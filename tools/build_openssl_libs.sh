#!/bin/bash

set -e

R=$(cd `dirname $0`; pwd)

export ANDROID_API=21

for i in android android-armeabi android-x86 android-mips android64-aarch64 android-mips64 android64; do
    echo -e "\n=================================== building openssl for $i"
    ( cd "$R"; sh build-openssl4android.sh $i )
done

echo -e "\nDONE."
