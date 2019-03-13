#!/bin/bash
echo set Fusion MiddleWare 12cR2 environment

export JAVA_HOME=/usr/jdk/instances/jdk1.8.0
export FMW_HOME=/SOA/u01/oracle/product/fmw
export SOA_HOME=$FMW_HOME/soa
export OSB_HOME=$FMW_HOME/osb
export MFT_HOME=$FMW_HOME/mftOME/mft

# change it for PROD, QUA or DEV
export SOA_ENV=QUA
