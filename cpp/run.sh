#!/bin/bash

make clean -s
make -s
./fizzbuzz "$1"
make clean -s