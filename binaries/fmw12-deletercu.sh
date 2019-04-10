#!/bin/bash
. $PWD/fmw12-env.sh

echo Run rcu for SOA Infrastucture
export RCU_SOA_RSP=fmw_12.2.1.3.0_rcu.$SOA_ENV.rsp
export RCU_SOA_PWD=rcuSOAPasswords.$SOA_ENV.txt

echo delete RCU for environment $SOA_ENV

$FMW_HOME/oracle_common/bin/rcu -silent -dropRepository -connectString $RCU_URI -dbUser SYS -dbRole SYSDBA -schemaPrefix $SOA_ENV -component STB -component ESS -component OPSS -component SOAINFRA -component UCSUMS -component IAU -component IAU_APPEND -component IAU_VIEWER -component MDS -component WLS -f < $PWD/$RCU_SOA_PWD