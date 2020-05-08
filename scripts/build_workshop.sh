#!/bin/bash

if [[ -z $1 ]]; then
  echo "usage: ./scripts/build_workshop.sh [path-to-manifest]"
  exit 1
else
  if [[ ! -e $1 ]]; then
    echo "$file $1 does not exist"
    exit 1
  fi
  MANIFEST=$1
fi

echo "build and move slides"
cd container.training/slides
./build.sh once
cd ../..
rm -rf workshop/slides
cp -r container.training/slides workshop/slides
cp workshop/slides/$MANIFEST.html workshop/slides/index.html
cat $MANIFEST