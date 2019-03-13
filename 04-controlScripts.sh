#!/bin/bash

. ./setEnv.sh
 
# create scripts control
mkdir $SCRIPTS_DIR
cp ./scripts/* $SCRIPTS_DIR
chmod u+x $SCRIPTS_DIR/*.sh
 
