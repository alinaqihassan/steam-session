#!/bin/sh -e

cd `dirname $0`

mkdir debian-tmp
cp -r packaging/debian steam-session debian-tmp

cd debian-tmp
fakeroot dpkg-buildpackage -b -us -uc
cd ..
rm -r debian-tmp

