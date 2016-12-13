#!/bin/sh
case $1/$2 in
  pre/*)
    echo "Going to $2..."
    xlock -mode forest
    ;;
  post/*)
    echo "Waking up from $2..."
    ;;
esac
