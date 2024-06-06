#/bin/bash

ghc -v0 -o fizzbuzz fizzbuzz.hs
./fizzbuzz "$1"
rm fizzbuzz