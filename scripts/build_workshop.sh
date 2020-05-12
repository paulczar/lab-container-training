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
  MANIFEST_FILE=$(basename $MANIFEST)
  MANIFEST_DIR=$(dirname $MANIFEST)
fi

echo "--> build and move slides"
cd container.training/slides
./build.sh once
cd ../..
rm -rf workshop/slides
mkdir -p workshop/slides
cp -r container.training/slides/images workshop/slides/images
cp container.training/slides/*.css workshop/slides/
cp container.training/slides/*.js workshop/slides/
cp container.training/slides/${MANIFEST_FILE}.html workshop/slides/index.html

echo "--> build workshop and manifest"

cat ./workshop/base-modules.yaml > ./workshop/modules.yaml
cat ./workshop/base-workshop.yaml > ./workshop/workshop.yaml
MODULES=$(yq r container.training/slides/${MANIFEST_FILE} content | grep -v '#' | awk -F" " '{ print $NF }')

for FILE in $MODULES; do
  mkdir -p "workshop/content/$(dirname $FILE)"
  cp container.training/slides/$FILE workshop/content/$FILE

  FULL_NAME=${FILE%.*}
  NAME=${FULL_NAME##.*/}
  cat <<EOF >> ./workshop/modules.yaml
  $FULL_NAME:
    name: "$NAME"
EOF
  cat <<EOF >> ./workshop/workshop.yaml
    - $FULL_NAME
EOF
done
