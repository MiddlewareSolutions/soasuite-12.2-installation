#!/bin/bash
. $PWD/fmw12-env.sh

#
echo JAVA_HOME=$JAVA_HOME
if [ ! -d "$JAVA_HOME" ]; then
  # Install jdk
  echo Install jdk 1.8
  pkg install /developer/java/jdk-8
else
  echo jdk 1.8 already installed
fi
