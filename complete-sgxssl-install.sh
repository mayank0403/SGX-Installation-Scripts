#!/bin/bash

echo "===>>>After copying the correct sgx ssl linux dir"

sudo cp -r SGX-Installation-Scripts/sgx-ssl-linux-dir/* intel-sgx-ssl/Linux/.

cd intel-sgx-ssl/Linux

sudo make clean
sudo make all test
sudo make install

