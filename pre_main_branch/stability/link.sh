#!/bin/bash

web3jsDir=/home/luke/go/src/github.com/artela-network/artela-web3.js
currentDir=$(pwd)

packages=()
for d in "$web3jsDir/packages/*"
do
  packages+=($(basename $d))
done
echo ${packages[@]}
npm link "${packages[@]}"