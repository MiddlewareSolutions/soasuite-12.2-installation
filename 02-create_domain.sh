#!/bin/bash
. $PWD/binaries/fmw12-env.sh

#!/bin/bash
echo _______________________________________________________________________________
echo Create CFL domain
$FMW_HOME/oracle_common/common/bin/wlst.sh createFullDomain.py -loadProperties cfl-domain.properties

