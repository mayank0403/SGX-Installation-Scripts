#!/bin/bash

echo "===>>> Cloning intel sgx ssl"

git clone https://github.com/intel/intel-sgx-ssl

cd intel-sgx-ssl

echo "===>>> Downloading vanilla openssl source package"

cd openssl_source

wget "https://www.openssl.org/source/openssl-1.1.1b.tar.gz"

echo "===>>> Making the project"

cd ../Linux

sudo make all test

echo "===>>> Installing the project"

sudo make install


