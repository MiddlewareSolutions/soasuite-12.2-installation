#!/bin/bash

# Execute with oracle account
# su - oracle
cd /CFL/oracle/binaries/

echo _______________________________________________________________________________
echo Install of infra and SOA and B2B with oracle user

echo
echo _______________________________________________________________________________
echo Fusion Middleware Infrastructure
./fmw12-infrastructure.sh

echo
echo _______________________________________________________________________________
echo SOA Suite
./fmw12-soa.sh

echo
echo _______________________________________________________________________________
echo B2B
./fmw12-b2bhealthcare.sh

echo
echo _______________________________________________________________________________
echo RCU
./fmw12-rcu.sh

cd ..

