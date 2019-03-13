#!/bin/sh
# chkconfig: 345 99 10
# description: Oracle auto start-stop script.
# Set ORA_OWNER to the user id of the owner of the
. $PWD/setEnv.sh
ORA_OWNER=oracle

echo "Oracle FMW 12.2.1 control"

case "$1" in
  'start')
    su $ORA_OWNER -c "$SCRIPTS_DIR/fmw_nodemanager.sh start"
    sleep 30
    su $ORA_OWNER -c "$SCRIPTS_DIR/fmw_admin_and_ms.sh start"
    ;;
  'stop')
    su $ORA_OWNER -c "${HOME}/fmw_admin_and_ms.sh stop"
    su $ORA_OWNER -c "${HOME}/fmw_nodemanager.sh stop"
    ;;
esac