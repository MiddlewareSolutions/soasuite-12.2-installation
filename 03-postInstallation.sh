#!/bin/bash

export DOMAIN_HOME=/SOA/u01/oracle/config/domains/cfl_domain

# disable derby
mv /SOA/u01/oracle/product/fmw/wlserver/common/derby/lib/derby.jar /SOA/u01/oracle/product/fmw/wlserver/common/derby/lib/derby.jar.disabled

# adapt nodemanager service
mv $DOMAIN_HOME/nodemanager/nodemanager.properties $DOMAIN_HOME/nodemanager/nodemanager.properties.backup
cp domain/nodemanager.properties $DOMAIN_HOME/nodemanager/

# create logs dir
mkdir /SOA/u01/oracle/logs/

# adapt MEMORY params
mv /SOA/u01/oracle/config/domains/cfl_domain/bin/setStartupEnv.sh /SOA/u01/oracle/config/domains/cfl_domain/bin/setStartupEnv.sh.backup
cp domain/setStartupEnv.sh /SOA/u01/oracle/config/domains/cfl_domain/bin/

# bug into domain generation: store empty
mv /SOA/u01/oracle/config/domains/cfl_domain/config/config.xml /SOA/u01/oracle/config/domains/cfl_domain/config/config.xml.backup
cp domain/config.xml /SOA/u01/oracle/config/domains/cfl_domain/config/ 
