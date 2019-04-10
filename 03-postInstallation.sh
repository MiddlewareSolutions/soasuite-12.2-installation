#!/bin/bash

export DOMAIN_HOME=/SOA/u01/oracle/config/domains/cfl_domain

# disable derby
echo Disable Derby
mv /SOA/u01/oracle/product/fmw/wlserver/common/derby/lib/derby.jar /SOA/u01/oracle/product/fmw/wlserver/common/derby/lib/derby.jar.disabled

# adapt nodemanager service
echo Adapt Manager service
mv $DOMAIN_HOME/nodemanager/nodemanager.properties $DOMAIN_HOME/nodemanager/nodemanager.properties.backup
cp domain/nodemanager.properties $DOMAIN_HOME/nodemanager/

# create logs dir
mkdir /SOA/u01/oracle/logs/

# adapt MEMORY params
echo Push Startup params
mv /SOA/u01/oracle/config/domains/cfl_domain/bin/setStartupEnv.sh /SOA/u01/oracle/config/domains/cfl_domain/bin/setStartupEnv.sh.backup
cp domain/setStartupEnv.sh /SOA/u01/oracle/config/domains/cfl_domain/bin/

# bug into domain generation: store empty
echo Push config without bug
cp /SOA/u01/oracle/config/domains/cfl_domain/config/config.xml /SOA/u01/oracle/config/domains/cfl_domain/config/config.xml.backup*
echo edit /SOA/u01/oracle/config/domains/cfl_domain/config/config.xml !
# cp domain/config.xml /SOA/u01/oracle/config/domains/cfl_domain/config/ 
