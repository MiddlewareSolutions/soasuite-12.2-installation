#!/bin/bash
. $PWD/fmw12-env.sh
#
export INSTALL_JAR=fmw_12.2.1.3.0_b2bhealthcare.jar
export INSTALL_RSP=fmw_12.2.1.3.0_b2bhealthcare.rsp

#
# Fusion Middlware Infrastucture
if [ ! -d "$FMW_HOME/b2b" ]; then
  echo Install B2B part of Fusion Middleware Infrastucture 12cR2
  $JAVA_HOME/bin/java -jar $INSTALL_JAR -silent -responseFile $PWD/$INSTALL_RSP
else
  echo $FMW_HOME/b2b available: Fusion Middleware 12c Infrastucture already installed.
fi
