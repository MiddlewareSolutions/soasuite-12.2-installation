#!/bin/bash

. $(dirname "$0")/setEnv.sh

case "$1" in
  start)
    nohup ${DOMAIN_HOME}/bin/startNodeManager.sh > ${SCRIPTS_DIR}/nodemanager.out 2>&1 &
    ;;
  stop)
    ${DOMAIN_HOME}/bin/stopNodeManager.sh
    ;;
  *)
    echo "usage: $0 [start|stop]"
    exit 2
    ;;
esac
