#!/bin/bash
. $PWD/binaries/fmw12-env.sh

cd ./domain

#!/bin/bash
echo _______________________________________________________________________________
echo Create CFL domain
$FMW_HOME/oracle_common/common/bin/wlst.sh createFullDomain.py -loadProperties domain.$SOA_ENV.properties

