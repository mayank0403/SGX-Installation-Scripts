#!/bin/bash

echo "===>>> Executing step 1"
sudo apt-get install libssl-dev libcurl4-openssl-dev libprotobuf-dev

echo "===>>> Executing step 2"
sudo apt-get install build-essential python

echo "===>>> Executing step 3"
wget "https://download.01.org/intel-sgx/linux-2.4/ubuntu16.04-server/libsgx-enclave-common-dev_2.4.100.48163-xenial1_amd64.deb"
wget "https://download.01.org/intel-sgx/linux-2.4/ubuntu16.04-server/libsgx-enclave-common_2.4.100.48163-xenial1_amd64.deb"
wget "https://download.01.org/intel-sgx/linux-2.4/ubuntu16.04-server/sgx_linux_x64_driver_778dd1f.bin"
wget "https://download.01.org/intel-sgx/linux-2.4/ubuntu16.04-server/sgx_linux_x64_sdk_2.4.100.48163.bin"

echo "===>>> Executing step 4"
chmod +x ./sgx_linux_x64_driver_778dd1f.bin
chmod +x ./sgx_linux_x64_sdk_2.4.100.48163.bin

echo "===>>> Executing step 5 - installing driver"
sudo ./sgx_linux_x64_driver_778dd1f.bin

echo "===>>> Executing step 6 - installing psw"
sudo dpkg -i ./libsgx-enclave-common_2.4.100.48163-xenial1_amd64.deb
sudo dpkg -i libsgx-enclave-common-dev_2.4.100.48163-xenial1_amd64.deb

echo "===>>> Executing step 7 - installing sdk"
sudo ./sgx_linux_x64_sdk_2.4.100.48163.bin

echo "===>>> Installed SGX on Linux"
echo "Setting LD LIBRARY PATH"
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/usr/local/lib
