#!/bin/bash

./gibo list # warm up
# Measure performance of new version
for i in {1..10}; do { time ./gibo list; } 2>> performance_new.txt; done
# Measure performance of old version
git fetch origin master
git show 54015c2:gibo > gibo_old
chmod +x gibo_old
for i in {1..10}; do { time ./gibo_old list; } 2>> performance_old.txt; done
