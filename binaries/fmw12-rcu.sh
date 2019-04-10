#!/bin/bash
. $PWD/fmw12-env.sh

echo Run rcu for SOA Infrastucture
export RCU_SOA_RSP=fmw_12.2.1.3.0_rcu.$SOA_ENV.rsp
export RCU_SOA_PWD=rcuSOAPasswords.$SOA_ENV.txt

echo start RCU for environment $SOA_ENV
$FMW_HOME/oracle_common/bin/rcu -silent -connectString $RCU_URI -responseFile $PWD/$RCU_SOA_RSP -f < $PWD/$RCU_SOA_PWD
