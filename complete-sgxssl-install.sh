#!/bin/bash

echo "===>>>After copying the correct sgx ssl linux dir"

cd intel-sgx-ssl/Linux

sudo make clean
sudo make all test
sudo make install

