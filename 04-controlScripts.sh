#!/bin/bash

. ./setEnv.sh
. ./binaries/fmw12-env.sh
 
echo _______________________________________________________________________________
echo Prepare scripts to manage FMW

# create scripts control
mkdir $SCRIPTS_DIR
cp ./scripts/* $SCRIPTS_DIR

# use specific domain file
rm $SCRIPTS_DIR/domain.*.properties
cp ./scripts/domain.$SOA_ENV.properties $SCRIPTS_DIR/domain.properties

# make executable
chmod u+x $SCRIPTS_DIR/*.sh

echo _______________________________________________________________________________
echo Declare service FMW

# service at startup
if [ "$PLATFORMID" = "Linux" ] then
   echo Do startup declaration !
fi

if [ "$PLATFORMID" = "SunOS" ] then
	ln -s /SOA/u01/oracle/scripts/fmw-12.2.1.sh /etc/init.d/fmw-12.2.1
	ln -s /etc/init.d/fmw-12.2.1 /etc/rc3.d/fmw-12.2.1
fi