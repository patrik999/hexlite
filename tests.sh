#!/usr/bin/env bash

WHAT="./tests/extatom2.hex"
EXTRA=""
hexlite $EXTRA \
  --pluginpath=./plugins/ \
  --plugin=stringplugin --plugin=testplugin \
  $WHAT

# for acthex development
if /bin/false; then
  echo "+++++"

  WHAT="./tests/acthex_bubblesort_sortenv.hex"
  EXTRA="--plugin=stringplugin"
  EXTRA=""
  EXTRA="$EXTRA --debug"
  EXTRA="$EXTRA --verbose"
  acthex $EXTRA \
    --pluginpath=./plugins/ \
    --plugin=acthex-testplugin \
    $WHAT

  echo "====="

  WHAT="./tests/acthex_bubblesort_persistenceenv.hex"
  EXTRA="--plugin=stringplugin"
  EXTRA=""
  EXTRA="$EXTRA --debug"
  EXTRA="$EXTRA --verbose"
  acthex $EXTRA \
    --pluginpath=./plugins/ \
    --plugin=acthex-testplugin \
    $WHAT
    
fi
