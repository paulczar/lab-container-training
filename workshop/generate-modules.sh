#!/bin/bash

cd ./content
MD_FILES=$(find . -name '*.md')
cd ..

cat ./base-modules.yaml > ./modules.yaml

for FILE in ${MD_FILES}; do
  # echo "--> processing $FILE"
  FULL_NAME=${FILE%.*}
  NAME=${FULL_NAME##.*/}
  cat <<EOF >> ./modules.yaml
  $FULL_NAME:
    name: "$NAME"
EOF

done