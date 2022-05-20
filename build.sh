#!/bin/sh

TAGS_DIR="$(pwd)/tags"
YMD=$(date +%Y%m%d)
YM=$(date +%Y%m)

TAGS=$@

if [ -z $TAGS ] ; then
  TAGS=$(ls $TAGS_DIR)
fi

echo tags $TAGS

for TAG in $TAGS; do
  docker build -t tmvdl/aws:$TAG $TAGS_DIR/$TAG/
  docker tag tmvdl/aws:$TAG tmvdl/aws:$TAG-$YMD
  docker tag tmvdl/aws:$TAG tmvdl/aws:$TAG-$YM
done
