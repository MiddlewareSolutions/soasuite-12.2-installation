#!/bin/bash
. $PWD/fmw12-env.sh
#
export INSTALL_JAR=fmw_12.2.1.3.0_infrastructure.jar
export INSTALL_RSP=fmw_12.2.1.3.0_infrastructure.rsp

#
# Fusion Middlware Infrastucture
if [ ! -d "$FMW_HOME" ]; then
  echo Install Fusion Middleware Infrastucture 12cR2
  $JAVA_HOME/bin/java -jar $INSTALL_JAR  -silent -responseFile $PWD/$INSTALL_RSP
else
  echo $FMW_HOME available: Fusion Middleware 12c Infrastucture already installed.
fi
