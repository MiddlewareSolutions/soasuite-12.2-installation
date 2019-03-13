#!/bin/bash
## fmw_admin_and_ms.sh

. $(dirname "$0")/setEnv.sh

export WLST=${FMW_HOME}/oracle_common/common/bin/wlst.sh
export WLST_VARS="-loadProperties $PROPERTIES_FILE"


case "$1" in
  start)
    ${WLST} ${SCRIPTS_DIR}/start_admin.py $WLST_VARS
    ${WLST} ${SCRIPTS_DIR}/start_ms.py $WLST_VARS
    ;;
  start_admin)
    ${WLST} ${SCRIPTS_DIR}/start_admin.py $WLST_VARS
    ;;
  start_ms)
    ${WLST} ${SCRIPTS_DIR}/start_ms.py $WLST_VARS
    ;;
  stop)
    ${WLST} ${SCRIPTS_DIR}/stop_ms.py $WLST_VARS
    ${WLST} ${SCRIPTS_DIR}/stop_admin.py $WLST_VARS
    ;;
  stop_admin)
    ${WLST} ${SCRIPTS_DIR}/stop_admin.py $WLST_VARS
    ;;
  stop_ms)
    ${WLST} ${SCRIPTS_DIR}/stop_ms.py $WLST_VARS
    ;;
  *)
    echo "usage: $0 [start|start_admin|start_ms|stop|stop_admin|stop_ms]"
    exit 2
    ;;
esac
