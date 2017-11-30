#!/bin/bash

set -e

R=$(cd `dirname $0`; pwd)

export ANDROID_API=21

for i in android android-armeabi android-x86 android-mips; do
    echo -e "\n=================================== building openssh for $i"
    ( cd "$R"; sh build-openssl4android.sh $i )
done

echo -e "\nDONE."
