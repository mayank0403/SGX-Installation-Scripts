# SGX-Installation-Scripts

Run the scripts in the following order to set up SGX SDK and SGX SSL on linux machine:

1. Run install-sgx-linux.sh
2. If it fails and asks for protobuf, run install-protobuf9v5.sh, followed by install-sgx-linux.sh again.
3. Run install-sgxssl.sh\
4. Followed by complete-sgxssl-install.sh, given that sgx-ssl-linux-dir's contents are copied to the approprate location in sgxssl new installation directory.
