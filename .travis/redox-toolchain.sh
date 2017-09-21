#!/bin/bash

rustup target add x86_64-unknown-redox
curl https://static.redox-os.org/toolchain/apt/keyFile | sudo apt-key add -
echo 'deb https://static.redox-os.org/toolchain/apt' | sudo tee -a /etc/apt/sources.list
sudo apt-get update -qq
sudo apt-get install -y x86-64-unknown-redox-gcc
