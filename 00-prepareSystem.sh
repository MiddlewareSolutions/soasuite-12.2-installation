#!/bin/bash

cd binaries/

echo Adapt environment on fmw12-env.sh 
pause

echo _______________________________________________________________________________
echo Java SDK 8
./fmw12-jdk.sh

echo _______________________________________________________________________________
echo Create Central Oracle Directory
./fmw12-createusers.sh

echo _______________________________________________________________________________
echo Create Central Oracle Directory
if [ "$PLATFORMID" = "Linux" ] then
   ./oracle-createCentralInventory.sh /etc oinstall
fi

if [ "$PLATFORMID" = "SunOS" ] then
   ./oracle-createCentralInventory.sh /var/opt/oracle oinstall
fi

cd ..

