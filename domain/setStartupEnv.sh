#!/bin/sh

# WARNING: This file is created by the Configuration Wizard.
# Any changes to this script may be lost when adding extensions to this configuration.

# *************************************************************************
#   Server scoped startup configuration.
# *************************************************************************

# Associate all admin-server server-groups to AdminServerStartupGroup

if [ "${STARTUP_GROUP}" != "" ] ; then
	if [ "${STARTUP_GROUP}" = "WSM-CACHE-SVR" ] ; then
		STARTUP_GROUP="AdminServerStartupGroup"
		export STARTUP_GROUP
	fi
	if [ "${STARTUP_GROUP}" = "SOA-ADMIN-SVR" ] ; then
		STARTUP_GROUP="AdminServerStartupGroup"
		export STARTUP_GROUP
	fi
	if [ "${STARTUP_GROUP}" = "em-core-main-svrs" ] ; then
		STARTUP_GROUP="AdminServerStartupGroup"
		export STARTUP_GROUP
	fi
	if [ "${STARTUP_GROUP}" = "ESS-BASE-ADMIN-SVR" ] ; then
		STARTUP_GROUP="AdminServerStartupGroup"
		export STARTUP_GROUP
	fi
	if [ "${STARTUP_GROUP}" = "em-as-main-svrs" ] ; then
		STARTUP_GROUP="AdminServerStartupGroup"
		export STARTUP_GROUP
	fi
	if [ "${STARTUP_GROUP}" = "WSMPM-ADMIN-SVR" ] ; then
		STARTUP_GROUP="AdminServerStartupGroup"
		export STARTUP_GROUP
	fi
	if [ "${STARTUP_GROUP}" = "em-ess-main-svrs" ] ; then
		STARTUP_GROUP="AdminServerStartupGroup"
		export STARTUP_GROUP
	fi
	if [ "${STARTUP_GROUP}" = "ESS-CLIENT-ADMIN-SVR" ] ; then
		STARTUP_GROUP="AdminServerStartupGroup"
		export STARTUP_GROUP
	fi
	if [ "${STARTUP_GROUP}" = "WSMPM-MAN-SVR" ] ; then
		STARTUP_GROUP="AdminServerStartupGroup"
		export STARTUP_GROUP
	fi
	if [ "${STARTUP_GROUP}" = "ESS-DC-ADMIN-SVR" ] ; then
		STARTUP_GROUP="AdminServerStartupGroup"
		export STARTUP_GROUP
	fi
	if [ "${STARTUP_GROUP}" = "WEBCENTER_COMPOSER-ADMIN-SVR" ] ; then
		STARTUP_GROUP="AdminServerStartupGroup"
		export STARTUP_GROUP
	fi
	if [ "${STARTUP_GROUP}" = "ESS-ADMIN-SVR" ] ; then
		STARTUP_GROUP="AdminServerStartupGroup"
		export STARTUP_GROUP
	fi
	if [ "${STARTUP_GROUP}" = "JRF-WS-CORE-ADMIN-SVR" ] ; then
		STARTUP_GROUP="AdminServerStartupGroup"
		export STARTUP_GROUP
	fi
	if [ "${STARTUP_GROUP}" = "JRF-MAN-SVR" ] ; then
		STARTUP_GROUP="AdminServerStartupGroup"
		export STARTUP_GROUP
	fi
	if [ "${STARTUP_GROUP}" = "ESS-THIN-CLIENT-ADMIN-SVR" ] ; then
		STARTUP_GROUP="AdminServerStartupGroup"
		export STARTUP_GROUP
	fi
	if [ "${STARTUP_GROUP}" = "BASE-WLS-ADMIN-SVR" ] ; then
		STARTUP_GROUP="AdminServerStartupGroup"
		export STARTUP_GROUP
	fi
	if [ "${STARTUP_GROUP}" = "ESS-MAIN-ADMIN-SVR" ] ; then
		STARTUP_GROUP="AdminServerStartupGroup"
		export STARTUP_GROUP
	fi
	if [ "${STARTUP_GROUP}" = "LOCAL-SVCTBL-DATASOURCE-SVR" ] ; then
		STARTUP_GROUP="AdminServerStartupGroup"
		export STARTUP_GROUP
	fi
	if [ "${STARTUP_GROUP}" = "JRF-ADMIN-SVR" ] ; then
		STARTUP_GROUP="AdminServerStartupGroup"
		export STARTUP_GROUP
	fi
	if [ "${STARTUP_GROUP}" = "ESS-CORE-ADMIN-SVR" ] ; then
		STARTUP_GROUP="AdminServerStartupGroup"
		export STARTUP_GROUP
	fi
	if [ "${STARTUP_GROUP}" = "em-soa-main-svrs" ] ; then
		STARTUP_GROUP="AdminServerStartupGroup"
		export STARTUP_GROUP
	fi
	if [ "${STARTUP_GROUP}" = "WEBCENTER_SKIN-ADMIN-SVR" ] ; then
		STARTUP_GROUP="AdminServerStartupGroup"
		export STARTUP_GROUP
	fi
	if [ "${STARTUP_GROUP}" = "RULES-ADMIN-SVR" ] ; then
		STARTUP_GROUP="AdminServerStartupGroup"
		export STARTUP_GROUP
	fi
fi

# Associate server with a startup group

if [ "${STARTUP_GROUP}" = "" ] ; then
	if [ "${SERVER_NAME}" = "soa_server2" ] ; then
		STARTUP_GROUP="SOA-MGD-SVRS"
		export STARTUP_GROUP
	fi
	if [ "${SERVER_NAME}" = "soa_server1" ] ; then
		STARTUP_GROUP="SOA-MGD-SVRS"
		export STARTUP_GROUP
	fi
	if [ "${SERVER_NAME}" = "AdminServer" ] ; then
		STARTUP_GROUP="AdminServerStartupGroup"
		export STARTUP_GROUP
	fi
	if [ "${SERVER_NAME}" = "ess_server2" ] ; then
		STARTUP_GROUP="ESS-MGD-SVRS"
		export STARTUP_GROUP
	fi
	if [ "${SERVER_NAME}" = "ess_server1" ] ; then
		STARTUP_GROUP="ESS-MGD-SVRS"
		export STARTUP_GROUP
	fi
fi

# Associate dynamic servers with a startup group

if [ "${STARTUP_GROUP}" = "" ] ; then
	if [[ "${SERVER_NAME}" = "ess_serverd"* ]] ; then
		STARTUP_GROUP="ESS-DYN-CLUSTER"
		export STARTUP_GROUP
	fi
	if [[ "${SERVER_NAME}" = "soa_only_serverd"* ]] ; then
		STARTUP_GROUP="SOA-DYN-CLUSTER-ONLY"
		export STARTUP_GROUP
	fi
	if [[ "${SERVER_NAME}" = "soa_serverd"* ]] ; then
		STARTUP_GROUP="SOA-DYN-CLUSTER"
		export STARTUP_GROUP
	fi
	if [[ "${SERVER_NAME}" = "wsm-cache-serverd"* ]] ; then
		STARTUP_GROUP="WSM-CACHE-DYN-CLUSTER"
		export STARTUP_GROUP
	fi
	if [[ "${SERVER_NAME}" = "wsmpm-serverd"* ]] ; then
		STARTUP_GROUP="WSMPM-DYN-CLUSTER"
		export STARTUP_GROUP
	fi
fi


# Environmental Variables for servers without any associated STARTUP_GROUP.

if [ "${STARTUP_GROUP}" = "" ] ; then
	COMMON_COMPONENTS_HOME="/SOA/u01/oracle/product/fmw/oracle_common"
	export COMMON_COMPONENTS_HOME
	ORACLE_DOMAIN_CONFIG_DIR="${DOMAIN_HOME}/config/fmwconfig"
	export ORACLE_DOMAIN_CONFIG_DIR
	EXTRA_JAVA_PROPERTIES="${EXTRA_JAVA_PROPERTIES} -Dem.oracle.home=/SOA/u01/oracle/product/fmw/em"
	export EXTRA_JAVA_PROPERTIES
	SOA_PRODUCT_HOME="/SOA/u01/oracle/product/fmw/soa"
	export SOA_PRODUCT_HOME
	CLASS_CACHE="true"
	export CLASS_CACHE
	ESS_ORACLE_HOME="/SOA/u01/oracle/product/fmw/oracle_common"
	export ESS_ORACLE_HOME
fi

# Startup parameters for servers without any associated STARTUP_GROUP.

if [ "${STARTUP_GROUP}" = "" ] ; then
	# Java system properties.
	SERVER_SYSTEM_PROPERTIES="-Dopss.version=12.2.1.3 -Digf.arisidbeans.carmlloc=${ORACLE_DOMAIN_CONFIG_DIR}/carml -Digf.arisidstack.home=${ORACLE_DOMAIN_CONFIG_DIR}/arisidprovider -Doracle.security.jps.config=${DOMAIN_HOME}/config/fmwconfig/jps-config.xml -Doracle.deployed.app.dir=${DOMAIN_HOME}/servers/${SERVER_NAME}/tmp/_WL_user -Doracle.deployed.app.ext=/- -Dweblogic.alternateTypesDirectory=${COMMON_COMPONENTS_HOME}/modules/oracle.ossoiap,${COMMON_COMPONENTS_HOME}/modules/oracle.oamprovider,${COMMON_COMPONENTS_HOME}/modules/oracle.jps -Doracle.mds.filestore.preferred=${ORACLE_FORCE_MDS_FILESTORE} -Dadf.version=12.2.1.3.0 -Dweblogic.jdbc.remoteEnabled=true -Dcommon.components.home=${COMMON_COMPONENTS_HOME} -Djrf.version=12.2.2 -Dorg.apache.commons.logging.Log=org.apache.commons.logging.impl.Jdk14Logger -Ddomain.home=${DOMAIN_HOME} -Doracle.server.config.dir=${ORACLE_DOMAIN_CONFIG_DIR}/servers/${SERVER_NAME} -Doracle.domain.config.dir=${ORACLE_DOMAIN_CONFIG_DIR} -Doracle.ess.home=${ESS_ORACLE_HOME}"
	export SERVER_SYSTEM_PROPERTIES
	# Java protocol handlers.
	JAVA_OPTIONS="${JAVA_OPTIONS} -Djava.protocol.handler.pkgs=oracle.mds.net.protocol|oracle.fabric.common.classloaderurl.handler|oracle.fabric.common.uddiurl.handler|oracle.bpm.io.fs.protocol"
	export JAVA_OPTIONS
	# PRE_CLASSPATH.
	if [ "${PRE_CLASSPATH}" != "" ] ; then
		PRE_CLASSPATH="${PRE_CLASSPATH}${CLASSPATHSEP}${MW_HOME}/oracle_common/modules/com.oracle.webservices.wls.wls-jaxrpc.jar${CLASSPATHSEP}${COMMON_COMPONENTS_HOME}/modules/features/com.oracle.db.jdbc7-dms.jar"
		export PRE_CLASSPATH
	else
		PRE_CLASSPATH="${MW_HOME}/oracle_common/modules/com.oracle.webservices.wls.wls-jaxrpc.jar${CLASSPATHSEP}${COMMON_COMPONENTS_HOME}/modules/features/com.oracle.db.jdbc7-dms.jar"
		export PRE_CLASSPATH
	fi
	# POST_CLASSPATH.
	if [ "${POST_CLASSPATH}" != "" ] ; then
		POST_CLASSPATH="${POST_CLASSPATH}${CLASSPATHSEP}${COMMON_COMPONENTS_HOME}/modules/internal/features/jrf_wlsFmw_oracle.jrf.wls.classpath.jar${CLASSPATHSEP}${SOA_PRODUCT_HOME}/soa/modules/oracle.soa.fabric_11.1.1/tracking-api.jar${CLASSPATHSEP}${SOA_PRODUCT_HOME}/soa/modules/commons-cli-1.1.jar${CLASSPATHSEP}${SOA_PRODUCT_HOME}/soa/modules/oracle.soa.mgmt_11.1.1/soa-infra-mgmt.jar${CLASSPATHSEP}${ESS_ORACLE_HOME}/ess/archives/ess-sec.jar"
		export POST_CLASSPATH
	else
		POST_CLASSPATH="${COMMON_COMPONENTS_HOME}/modules/internal/features/jrf_wlsFmw_oracle.jrf.wls.classpath.jar${CLASSPATHSEP}${SOA_PRODUCT_HOME}/soa/modules/oracle.soa.fabric_11.1.1/tracking-api.jar${CLASSPATHSEP}${SOA_PRODUCT_HOME}/soa/modules/commons-cli-1.1.jar${CLASSPATHSEP}${SOA_PRODUCT_HOME}/soa/modules/oracle.soa.mgmt_11.1.1/soa-infra-mgmt.jar${CLASSPATHSEP}${ESS_ORACLE_HOME}/ess/archives/ess-sec.jar"
		export POST_CLASSPATH
	fi
	# 32 bit JVM memory settings
	SERVER_MEM_ARGS_32="-Xms768m -Xmx1536m"
	export SERVER_MEM_ARGS_32
	SERVER_MEM_ARGS_32HotSpot="-Xms768m -Xmx1536m"
	export SERVER_MEM_ARGS_32HotSpot
	SERVER_MEM_ARGS_32JRockit="-Xms768m -Xmx1536m"
	export SERVER_MEM_ARGS_32JRockit
	# 64 bit JVM memory settings
	SERVER_MEM_ARGS_64="-Xms768m -Xmx1536m"
	export SERVER_MEM_ARGS_64
	SERVER_MEM_ARGS_64HotSpot="-Xms768m -Xmx1536m"
	export SERVER_MEM_ARGS_64HotSpot
	SERVER_MEM_ARGS_64JRockit="-Xms768m -Xmx1536m"
	export SERVER_MEM_ARGS_64JRockit
	# Other java arguments
	SERVER_GENERIC_ARGS_PRODUCTION="-d64"
	export SERVER_GENERIC_ARGS_PRODUCTION
	SERVER_GENERIC_ARGS_DEVELOPMENT="-d64"
	export SERVER_GENERIC_ARGS_DEVELOPMENT
	# Other JVM arguments
fi

# Environmental Variables for STARTUP_GROUP ESS-DYN-CLUSTER

if [ "${STARTUP_GROUP}" = "ESS-DYN-CLUSTER" ] ; then
	COMMON_COMPONENTS_HOME="/SOA/u01/oracle/product/fmw/oracle_common"
	export COMMON_COMPONENTS_HOME
	ORACLE_DOMAIN_CONFIG_DIR="${DOMAIN_HOME}/config/fmwconfig"
	export ORACLE_DOMAIN_CONFIG_DIR
	EXTRA_JAVA_PROPERTIES="${EXTRA_JAVA_PROPERTIES} -Dem.oracle.home=/SOA/u01/oracle/product/fmw/em"
	export EXTRA_JAVA_PROPERTIES
	SOA_PRODUCT_HOME="/SOA/u01/oracle/product/fmw/soa"
	export SOA_PRODUCT_HOME
	CLASS_CACHE="true"
	export CLASS_CACHE
	ESS_ORACLE_HOME="/SOA/u01/oracle/product/fmw/oracle_common"
	export ESS_ORACLE_HOME
fi

# Startup parameters for STARTUP_GROUP ESS-DYN-CLUSTER

if [ "${STARTUP_GROUP}" = "ESS-DYN-CLUSTER" ] ; then
	# Java system properties.
	SERVER_SYSTEM_PROPERTIES="-Dopss.version=12.2.1.3 -Digf.arisidbeans.carmlloc=${ORACLE_DOMAIN_CONFIG_DIR}/carml -Digf.arisidstack.home=${ORACLE_DOMAIN_CONFIG_DIR}/arisidprovider -Doracle.security.jps.config=${DOMAIN_HOME}/config/fmwconfig/jps-config.xml -Doracle.deployed.app.dir=${DOMAIN_HOME}/servers/${SERVER_NAME}/tmp/_WL_user -Doracle.deployed.app.ext=/- -Dweblogic.alternateTypesDirectory=${COMMON_COMPONENTS_HOME}/modules/oracle.ossoiap,${COMMON_COMPONENTS_HOME}/modules/oracle.oamprovider,${COMMON_COMPONENTS_HOME}/modules/oracle.jps -Doracle.mds.filestore.preferred=${ORACLE_FORCE_MDS_FILESTORE} -Dadf.version=12.2.1.3.0 -Dweblogic.jdbc.remoteEnabled=true -Dcommon.components.home=${COMMON_COMPONENTS_HOME} -Djrf.version=12.2.2 -Dorg.apache.commons.logging.Log=org.apache.commons.logging.impl.Jdk14Logger -Ddomain.home=${DOMAIN_HOME} -Doracle.server.config.dir=${ORACLE_DOMAIN_CONFIG_DIR}/servers/${SERVER_NAME} -Doracle.domain.config.dir=${ORACLE_DOMAIN_CONFIG_DIR} -Doracle.ess.home=${ESS_ORACLE_HOME}"
	export SERVER_SYSTEM_PROPERTIES
	# Java protocol handlers.
	JAVA_OPTIONS="${JAVA_OPTIONS} -Djava.protocol.handler.pkgs=oracle.mds.net.protocol|oracle.fabric.common.classloaderurl.handler|oracle.fabric.common.uddiurl.handler|oracle.bpm.io.fs.protocol"
	export JAVA_OPTIONS
	# PRE_CLASSPATH.
	if [ "${PRE_CLASSPATH}" != "" ] ; then
		PRE_CLASSPATH="${PRE_CLASSPATH}${CLASSPATHSEP}${MW_HOME}/oracle_common/modules/com.oracle.webservices.wls.wls-jaxrpc.jar${CLASSPATHSEP}${COMMON_COMPONENTS_HOME}/modules/features/com.oracle.db.jdbc7-dms.jar"
		export PRE_CLASSPATH
	else
		PRE_CLASSPATH="${MW_HOME}/oracle_common/modules/com.oracle.webservices.wls.wls-jaxrpc.jar${CLASSPATHSEP}${COMMON_COMPONENTS_HOME}/modules/features/com.oracle.db.jdbc7-dms.jar"
		export PRE_CLASSPATH
	fi
	# POST_CLASSPATH.
	if [ "${POST_CLASSPATH}" != "" ] ; then
		POST_CLASSPATH="${POST_CLASSPATH}${CLASSPATHSEP}${COMMON_COMPONENTS_HOME}/modules/internal/features/jrf_wlsFmw_oracle.jrf.wls.classpath.jar${CLASSPATHSEP}${SOA_PRODUCT_HOME}/soa/modules/oracle.soa.fabric_11.1.1/tracking-api.jar${CLASSPATHSEP}${SOA_PRODUCT_HOME}/soa/modules/commons-cli-1.1.jar${CLASSPATHSEP}${SOA_PRODUCT_HOME}/soa/modules/oracle.soa.mgmt_11.1.1/soa-infra-mgmt.jar${CLASSPATHSEP}${ESS_ORACLE_HOME}/ess/archives/ess-sec.jar"
		export POST_CLASSPATH
	else
		POST_CLASSPATH="${COMMON_COMPONENTS_HOME}/modules/internal/features/jrf_wlsFmw_oracle.jrf.wls.classpath.jar${CLASSPATHSEP}${SOA_PRODUCT_HOME}/soa/modules/oracle.soa.fabric_11.1.1/tracking-api.jar${CLASSPATHSEP}${SOA_PRODUCT_HOME}/soa/modules/commons-cli-1.1.jar${CLASSPATHSEP}${SOA_PRODUCT_HOME}/soa/modules/oracle.soa.mgmt_11.1.1/soa-infra-mgmt.jar${CLASSPATHSEP}${ESS_ORACLE_HOME}/ess/archives/ess-sec.jar"
		export POST_CLASSPATH
	fi
	# 32 bit JVM memory settings
	SERVER_MEM_ARGS_32="-Xms768m -Xmx1536m"
	export SERVER_MEM_ARGS_32
	SERVER_MEM_ARGS_32HotSpot="-Xms768m -Xmx1536m"
	export SERVER_MEM_ARGS_32HotSpot
	SERVER_MEM_ARGS_32JRockit="-Xms768m -Xmx1536m"
	export SERVER_MEM_ARGS_32JRockit
	# 64 bit JVM memory settings
	SERVER_MEM_ARGS_64="-Xms768m -Xmx1536m"
	export SERVER_MEM_ARGS_64
	SERVER_MEM_ARGS_64HotSpot="-Xms768m -Xmx1536m"
	export SERVER_MEM_ARGS_64HotSpot
	SERVER_MEM_ARGS_64JRockit="-Xms768m -Xmx1536m"
	export SERVER_MEM_ARGS_64JRockit
	# Other java arguments
	SERVER_GENERIC_ARGS_PRODUCTION="-d64"
	export SERVER_GENERIC_ARGS_PRODUCTION
	SERVER_GENERIC_ARGS_DEVELOPMENT="-d64"
	export SERVER_GENERIC_ARGS_DEVELOPMENT
	# Other JVM arguments
fi

# Environmental Variables for STARTUP_GROUP AdminServerStartupGroup

if [ "${STARTUP_GROUP}" = "AdminServerStartupGroup" ] ; then
	COMMON_COMPONENTS_HOME="/SOA/u01/oracle/product/fmw/oracle_common"
	export COMMON_COMPONENTS_HOME
	ORACLE_DOMAIN_CONFIG_DIR="${DOMAIN_HOME}/config/fmwconfig"
	export ORACLE_DOMAIN_CONFIG_DIR
	EXTRA_JAVA_PROPERTIES="${EXTRA_JAVA_PROPERTIES} -Dem.oracle.home=/SOA/u01/oracle/product/fmw/em -DINSTANCE_HOME=/SOA/u01/oracle/config/domains/cfl_domain -Djava.awt.headless=true -Doracle.sysman.util.logging.mode=dual_mode"
	export EXTRA_JAVA_PROPERTIES
	SOA_PRODUCT_HOME="/SOA/u01/oracle/product/fmw/soa"
	export SOA_PRODUCT_HOME
	CLASS_CACHE="true"
	export CLASS_CACHE
	ESS_ORACLE_HOME="/SOA/u01/oracle/product/fmw/oracle_common"
	export ESS_ORACLE_HOME
	APPLICATIONS_DIRECTORY="/SOA/u01/oracle/config/applications/cfl_domain"
	export APPLICATIONS_DIRECTORY
fi

# Startup parameters for STARTUP_GROUP AdminServerStartupGroup

if [ "${STARTUP_GROUP}" = "AdminServerStartupGroup" ] ; then
	# Java system properties.
	SERVER_SYSTEM_PROPERTIES="-Dopss.version=12.2.1.3 -Digf.arisidbeans.carmlloc=${ORACLE_DOMAIN_CONFIG_DIR}/carml -Digf.arisidstack.home=${ORACLE_DOMAIN_CONFIG_DIR}/arisidprovider -Doracle.security.jps.config=${DOMAIN_HOME}/config/fmwconfig/jps-config.xml -Doracle.deployed.app.dir=${DOMAIN_HOME}/servers/${SERVER_NAME}/tmp/_WL_user -Doracle.deployed.app.ext=/- -Dweblogic.alternateTypesDirectory=${COMMON_COMPONENTS_HOME}/modules/oracle.ossoiap,${COMMON_COMPONENTS_HOME}/modules/oracle.oamprovider,${COMMON_COMPONENTS_HOME}/modules/oracle.jps -Doracle.mds.filestore.preferred=${ORACLE_FORCE_MDS_FILESTORE} -Dadf.version=12.2.1.3.0 -Dweblogic.jdbc.remoteEnabled=true -Dcommon.components.home=${COMMON_COMPONENTS_HOME} -Djrf.version=12.2.2 -Dorg.apache.commons.logging.Log=org.apache.commons.logging.impl.Jdk14Logger -Ddomain.home=${DOMAIN_HOME} -Doracle.server.config.dir=${ORACLE_DOMAIN_CONFIG_DIR}/servers/${SERVER_NAME} -Doracle.domain.config.dir=${ORACLE_DOMAIN_CONFIG_DIR} -Doracle.ess.home=${ESS_ORACLE_HOME}"
	export SERVER_SYSTEM_PROPERTIES
	# Java protocol handlers.
	JAVA_OPTIONS="${JAVA_OPTIONS} -Djava.protocol.handler.pkgs=oracle.mds.net.protocol|oracle.fabric.common.classloaderurl.handler|oracle.fabric.common.uddiurl.handler|oracle.bpm.io.fs.protocol"
	export JAVA_OPTIONS
	# PRE_CLASSPATH.
	if [ "${PRE_CLASSPATH}" != "" ] ; then
		PRE_CLASSPATH="${PRE_CLASSPATH}${CLASSPATHSEP}${MW_HOME}/oracle_common/modules/com.oracle.webservices.wls.wls-jaxrpc.jar${CLASSPATHSEP}${COMMON_COMPONENTS_HOME}/modules/features/com.oracle.db.jdbc7-dms.jar"
		export PRE_CLASSPATH
	else
		PRE_CLASSPATH="${MW_HOME}/oracle_common/modules/com.oracle.webservices.wls.wls-jaxrpc.jar${CLASSPATHSEP}${COMMON_COMPONENTS_HOME}/modules/features/com.oracle.db.jdbc7-dms.jar"
		export PRE_CLASSPATH
	fi
	# POST_CLASSPATH.
	if [ "${POST_CLASSPATH}" != "" ] ; then
		POST_CLASSPATH="${POST_CLASSPATH}${CLASSPATHSEP}${COMMON_COMPONENTS_HOME}/modules/internal/features/jrf_wlsFmw_oracle.jrf.wls.classpath.jar${CLASSPATHSEP}${SOA_PRODUCT_HOME}/soa/modules/oracle.soa.fabric_11.1.1/tracking-api.jar${CLASSPATHSEP}${SOA_PRODUCT_HOME}/soa/modules/commons-cli-1.1.jar${CLASSPATHSEP}${SOA_PRODUCT_HOME}/soa/modules/oracle.soa.mgmt_11.1.1/soa-infra-mgmt.jar${CLASSPATHSEP}${ESS_ORACLE_HOME}/ess/archives/ess-sec.jar"
		export POST_CLASSPATH
	else
		POST_CLASSPATH="${COMMON_COMPONENTS_HOME}/modules/internal/features/jrf_wlsFmw_oracle.jrf.wls.classpath.jar${CLASSPATHSEP}${SOA_PRODUCT_HOME}/soa/modules/oracle.soa.fabric_11.1.1/tracking-api.jar${CLASSPATHSEP}${SOA_PRODUCT_HOME}/soa/modules/commons-cli-1.1.jar${CLASSPATHSEP}${SOA_PRODUCT_HOME}/soa/modules/oracle.soa.mgmt_11.1.1/soa-infra-mgmt.jar${CLASSPATHSEP}${ESS_ORACLE_HOME}/ess/archives/ess-sec.jar"
		export POST_CLASSPATH
	fi
	# 32 bit JVM memory settings
	SERVER_MEM_ARGS_32="-Xms768m -Xmx1536m"
	export SERVER_MEM_ARGS_32
	SERVER_MEM_ARGS_32HotSpot="-Xms768m -Xmx1536m"
	export SERVER_MEM_ARGS_32HotSpot
	SERVER_MEM_ARGS_32JRockit="-Xms768m -Xmx1536m"
	export SERVER_MEM_ARGS_32JRockit
	# 64 bit JVM memory settings
	#SERVER_MEM_ARGS_64="-Xms768m -Xmx1536m"
	SERVER_MEM_ARGS_64="-Xms512m -Xmx2g"
	export SERVER_MEM_ARGS_64
	SERVER_MEM_ARGS_64HotSpot="-Xms1g -Xmx2g -XX:+UseConcMarkSweepGC -XX:+CMSIncrementalMode"
	export SERVER_MEM_ARGS_64HotSpot
	SERVER_MEM_ARGS_64JRockit="-Xms1g -Xmx2g"
	export SERVER_MEM_ARGS_64JRockit
	# Other java arguments
	SERVER_GENERIC_ARGS_PRODUCTION="-d64"
	export SERVER_GENERIC_ARGS_PRODUCTION
	SERVER_GENERIC_ARGS_DEVELOPMENT="-d64"
	export SERVER_GENERIC_ARGS_DEVELOPMENT
	# Other JVM arguments
fi

# Environmental Variables for STARTUP_GROUP UMS-DRIVER-EXTENSION-MGD-SVR

if [ "${STARTUP_GROUP}" = "UMS-DRIVER-EXTENSION-MGD-SVR" ] ; then
	COMMON_COMPONENTS_HOME="/SOA/u01/oracle/product/fmw/oracle_common"
	export COMMON_COMPONENTS_HOME
	ORACLE_DOMAIN_CONFIG_DIR="${DOMAIN_HOME}/config/fmwconfig"
	export ORACLE_DOMAIN_CONFIG_DIR
	EXTRA_JAVA_PROPERTIES="${EXTRA_JAVA_PROPERTIES} -Dem.oracle.home=/SOA/u01/oracle/product/fmw/em"
	export EXTRA_JAVA_PROPERTIES
	SOA_PRODUCT_HOME="/SOA/u01/oracle/product/fmw/soa"
	export SOA_PRODUCT_HOME
	CLASS_CACHE="true"
	export CLASS_CACHE
	ESS_ORACLE_HOME="/SOA/u01/oracle/product/fmw/oracle_common"
	export ESS_ORACLE_HOME
fi

# Startup parameters for STARTUP_GROUP UMS-DRIVER-EXTENSION-MGD-SVR

if [ "${STARTUP_GROUP}" = "UMS-DRIVER-EXTENSION-MGD-SVR" ] ; then
	# Java system properties.
	SERVER_SYSTEM_PROPERTIES="-Dopss.version=12.2.1.3 -Digf.arisidbeans.carmlloc=${ORACLE_DOMAIN_CONFIG_DIR}/carml -Digf.arisidstack.home=${ORACLE_DOMAIN_CONFIG_DIR}/arisidprovider -Doracle.security.jps.config=${DOMAIN_HOME}/config/fmwconfig/jps-config.xml -Doracle.deployed.app.dir=${DOMAIN_HOME}/servers/${SERVER_NAME}/tmp/_WL_user -Doracle.deployed.app.ext=/- -Dweblogic.alternateTypesDirectory=${COMMON_COMPONENTS_HOME}/modules/oracle.ossoiap,${COMMON_COMPONENTS_HOME}/modules/oracle.oamprovider,${COMMON_COMPONENTS_HOME}/modules/oracle.jps -Doracle.mds.filestore.preferred=${ORACLE_FORCE_MDS_FILESTORE} -Dadf.version=12.2.1.3.0 -Dweblogic.jdbc.remoteEnabled=true -Dcommon.components.home=${COMMON_COMPONENTS_HOME} -Djrf.version=12.2.2 -Dorg.apache.commons.logging.Log=org.apache.commons.logging.impl.Jdk14Logger -Ddomain.home=${DOMAIN_HOME} -Doracle.server.config.dir=${ORACLE_DOMAIN_CONFIG_DIR}/servers/${SERVER_NAME} -Doracle.domain.config.dir=${ORACLE_DOMAIN_CONFIG_DIR} -Doracle.ess.home=${ESS_ORACLE_HOME}"
	export SERVER_SYSTEM_PROPERTIES
	# Java protocol handlers.
	JAVA_OPTIONS="${JAVA_OPTIONS} -Djava.protocol.handler.pkgs=oracle.mds.net.protocol|oracle.fabric.common.classloaderurl.handler|oracle.fabric.common.uddiurl.handler|oracle.bpm.io.fs.protocol"
	export JAVA_OPTIONS
	# PRE_CLASSPATH.
	if [ "${PRE_CLASSPATH}" != "" ] ; then
		PRE_CLASSPATH="${PRE_CLASSPATH}${CLASSPATHSEP}${MW_HOME}/oracle_common/modules/com.oracle.webservices.wls.wls-jaxrpc.jar${CLASSPATHSEP}${COMMON_COMPONENTS_HOME}/modules/features/com.oracle.db.jdbc7-dms.jar"
		export PRE_CLASSPATH
	else
		PRE_CLASSPATH="${MW_HOME}/oracle_common/modules/com.oracle.webservices.wls.wls-jaxrpc.jar${CLASSPATHSEP}${COMMON_COMPONENTS_HOME}/modules/features/com.oracle.db.jdbc7-dms.jar"
		export PRE_CLASSPATH
	fi
	# POST_CLASSPATH.
	if [ "${POST_CLASSPATH}" != "" ] ; then
		POST_CLASSPATH="${POST_CLASSPATH}${CLASSPATHSEP}${COMMON_COMPONENTS_HOME}/modules/internal/features/jrf_wlsFmw_oracle.jrf.wls.classpath.jar${CLASSPATHSEP}${SOA_PRODUCT_HOME}/soa/modules/oracle.soa.fabric_11.1.1/tracking-api.jar${CLASSPATHSEP}${SOA_PRODUCT_HOME}/soa/modules/commons-cli-1.1.jar${CLASSPATHSEP}${SOA_PRODUCT_HOME}/soa/modules/oracle.soa.mgmt_11.1.1/soa-infra-mgmt.jar${CLASSPATHSEP}${ESS_ORACLE_HOME}/ess/archives/ess-sec.jar"
		export POST_CLASSPATH
	else
		POST_CLASSPATH="${COMMON_COMPONENTS_HOME}/modules/internal/features/jrf_wlsFmw_oracle.jrf.wls.classpath.jar${CLASSPATHSEP}${SOA_PRODUCT_HOME}/soa/modules/oracle.soa.fabric_11.1.1/tracking-api.jar${CLASSPATHSEP}${SOA_PRODUCT_HOME}/soa/modules/commons-cli-1.1.jar${CLASSPATHSEP}${SOA_PRODUCT_HOME}/soa/modules/oracle.soa.mgmt_11.1.1/soa-infra-mgmt.jar${CLASSPATHSEP}${ESS_ORACLE_HOME}/ess/archives/ess-sec.jar"
		export POST_CLASSPATH
	fi
	# 32 bit JVM memory settings
	SERVER_MEM_ARGS_32="-Xms768m -Xmx1536m"
	export SERVER_MEM_ARGS_32
	SERVER_MEM_ARGS_32HotSpot="-Xms768m -Xmx1536m"
	export SERVER_MEM_ARGS_32HotSpot
	SERVER_MEM_ARGS_32JRockit="-Xms768m -Xmx1536m"
	export SERVER_MEM_ARGS_32JRockit
	# 64 bit JVM memory settings
	SERVER_MEM_ARGS_64="-Xms768m -Xmx1536m"
	export SERVER_MEM_ARGS_64
	SERVER_MEM_ARGS_64HotSpot="-Xms768m -Xmx1536m"
	export SERVER_MEM_ARGS_64HotSpot
	SERVER_MEM_ARGS_64JRockit="-Xms768m -Xmx1536m"
	export SERVER_MEM_ARGS_64JRockit
	# Other java arguments
	SERVER_GENERIC_ARGS_PRODUCTION="-d64"
	export SERVER_GENERIC_ARGS_PRODUCTION
	SERVER_GENERIC_ARGS_DEVELOPMENT="-d64"
	export SERVER_GENERIC_ARGS_DEVELOPMENT
	# Other JVM arguments
fi

# Environmental Variables for STARTUP_GROUP UMS-DRIVER-SMPP-MGD-SVR

if [ "${STARTUP_GROUP}" = "UMS-DRIVER-SMPP-MGD-SVR" ] ; then
	COMMON_COMPONENTS_HOME="/SOA/u01/oracle/product/fmw/oracle_common"
	export COMMON_COMPONENTS_HOME
	ORACLE_DOMAIN_CONFIG_DIR="${DOMAIN_HOME}/config/fmwconfig"
	export ORACLE_DOMAIN_CONFIG_DIR
	EXTRA_JAVA_PROPERTIES="${EXTRA_JAVA_PROPERTIES} -Dem.oracle.home=/SOA/u01/oracle/product/fmw/em"
	export EXTRA_JAVA_PROPERTIES
	SOA_PRODUCT_HOME="/SOA/u01/oracle/product/fmw/soa"
	export SOA_PRODUCT_HOME
	CLASS_CACHE="true"
	export CLASS_CACHE
	ESS_ORACLE_HOME="/SOA/u01/oracle/product/fmw/oracle_common"
	export ESS_ORACLE_HOME
fi

# Startup parameters for STARTUP_GROUP UMS-DRIVER-SMPP-MGD-SVR

if [ "${STARTUP_GROUP}" = "UMS-DRIVER-SMPP-MGD-SVR" ] ; then
	# Java system properties.
	SERVER_SYSTEM_PROPERTIES="-Dopss.version=12.2.1.3 -Digf.arisidbeans.carmlloc=${ORACLE_DOMAIN_CONFIG_DIR}/carml -Digf.arisidstack.home=${ORACLE_DOMAIN_CONFIG_DIR}/arisidprovider -Doracle.security.jps.config=${DOMAIN_HOME}/config/fmwconfig/jps-config.xml -Doracle.deployed.app.dir=${DOMAIN_HOME}/servers/${SERVER_NAME}/tmp/_WL_user -Doracle.deployed.app.ext=/- -Dweblogic.alternateTypesDirectory=${COMMON_COMPONENTS_HOME}/modules/oracle.ossoiap,${COMMON_COMPONENTS_HOME}/modules/oracle.oamprovider,${COMMON_COMPONENTS_HOME}/modules/oracle.jps -Doracle.mds.filestore.preferred=${ORACLE_FORCE_MDS_FILESTORE} -Dadf.version=12.2.1.3.0 -Dweblogic.jdbc.remoteEnabled=true -Dcommon.components.home=${COMMON_COMPONENTS_HOME} -Djrf.version=12.2.2 -Dorg.apache.commons.logging.Log=org.apache.commons.logging.impl.Jdk14Logger -Ddomain.home=${DOMAIN_HOME} -Doracle.server.config.dir=${ORACLE_DOMAIN_CONFIG_DIR}/servers/${SERVER_NAME} -Doracle.domain.config.dir=${ORACLE_DOMAIN_CONFIG_DIR} -Doracle.ess.home=${ESS_ORACLE_HOME}"
	export SERVER_SYSTEM_PROPERTIES
	# Java protocol handlers.
	JAVA_OPTIONS="${JAVA_OPTIONS} -Djava.protocol.handler.pkgs=oracle.mds.net.protocol|oracle.fabric.common.classloaderurl.handler|oracle.fabric.common.uddiurl.handler|oracle.bpm.io.fs.protocol"
	export JAVA_OPTIONS
	# PRE_CLASSPATH.
	if [ "${PRE_CLASSPATH}" != "" ] ; then
		PRE_CLASSPATH="${PRE_CLASSPATH}${CLASSPATHSEP}${MW_HOME}/oracle_common/modules/com.oracle.webservices.wls.wls-jaxrpc.jar${CLASSPATHSEP}${COMMON_COMPONENTS_HOME}/modules/features/com.oracle.db.jdbc7-dms.jar"
		export PRE_CLASSPATH
	else
		PRE_CLASSPATH="${MW_HOME}/oracle_common/modules/com.oracle.webservices.wls.wls-jaxrpc.jar${CLASSPATHSEP}${COMMON_COMPONENTS_HOME}/modules/features/com.oracle.db.jdbc7-dms.jar"
		export PRE_CLASSPATH
	fi
	# POST_CLASSPATH.
	if [ "${POST_CLASSPATH}" != "" ] ; then
		POST_CLASSPATH="${POST_CLASSPATH}${CLASSPATHSEP}${COMMON_COMPONENTS_HOME}/modules/internal/features/jrf_wlsFmw_oracle.jrf.wls.classpath.jar${CLASSPATHSEP}${SOA_PRODUCT_HOME}/soa/modules/oracle.soa.fabric_11.1.1/tracking-api.jar${CLASSPATHSEP}${SOA_PRODUCT_HOME}/soa/modules/commons-cli-1.1.jar${CLASSPATHSEP}${SOA_PRODUCT_HOME}/soa/modules/oracle.soa.mgmt_11.1.1/soa-infra-mgmt.jar${CLASSPATHSEP}${ESS_ORACLE_HOME}/ess/archives/ess-sec.jar"
		export POST_CLASSPATH
	else
		POST_CLASSPATH="${COMMON_COMPONENTS_HOME}/modules/internal/features/jrf_wlsFmw_oracle.jrf.wls.classpath.jar${CLASSPATHSEP}${SOA_PRODUCT_HOME}/soa/modules/oracle.soa.fabric_11.1.1/tracking-api.jar${CLASSPATHSEP}${SOA_PRODUCT_HOME}/soa/modules/commons-cli-1.1.jar${CLASSPATHSEP}${SOA_PRODUCT_HOME}/soa/modules/oracle.soa.mgmt_11.1.1/soa-infra-mgmt.jar${CLASSPATHSEP}${ESS_ORACLE_HOME}/ess/archives/ess-sec.jar"
		export POST_CLASSPATH
	fi
	# 32 bit JVM memory settings
	SERVER_MEM_ARGS_32="-Xms768m -Xmx1536m"
	export SERVER_MEM_ARGS_32
	SERVER_MEM_ARGS_32HotSpot="-Xms768m -Xmx1536m"
	export SERVER_MEM_ARGS_32HotSpot
	SERVER_MEM_ARGS_32JRockit="-Xms768m -Xmx1536m"
	export SERVER_MEM_ARGS_32JRockit
	# 64 bit JVM memory settings
	SERVER_MEM_ARGS_64="-Xms768m -Xmx1536m"
	export SERVER_MEM_ARGS_64
	SERVER_MEM_ARGS_64HotSpot="-Xms768m -Xmx1536m"
	export SERVER_MEM_ARGS_64HotSpot
	SERVER_MEM_ARGS_64JRockit="-Xms768m -Xmx1536m"
	export SERVER_MEM_ARGS_64JRockit
	# Other java arguments
	SERVER_GENERIC_ARGS_PRODUCTION="-d64"
	export SERVER_GENERIC_ARGS_PRODUCTION
	SERVER_GENERIC_ARGS_DEVELOPMENT="-d64"
	export SERVER_GENERIC_ARGS_DEVELOPMENT
	# Other JVM arguments
fi

# Environmental Variables for STARTUP_GROUP ESS-MGD-SVRS

if [ "${STARTUP_GROUP}" = "ESS-MGD-SVRS" ] ; then
	COMMON_COMPONENTS_HOME="/SOA/u01/oracle/product/fmw/oracle_common"
	export COMMON_COMPONENTS_HOME
	ORACLE_DOMAIN_CONFIG_DIR="${DOMAIN_HOME}/config/fmwconfig"
	export ORACLE_DOMAIN_CONFIG_DIR
	EXTRA_JAVA_PROPERTIES="${EXTRA_JAVA_PROPERTIES} -Dem.oracle.home=/SOA/u01/oracle/product/fmw/em"
	export EXTRA_JAVA_PROPERTIES
	SOA_PRODUCT_HOME="/SOA/u01/oracle/product/fmw/soa"
	export SOA_PRODUCT_HOME
	CLASS_CACHE="true"
	export CLASS_CACHE
	ESS_ORACLE_HOME="/SOA/u01/oracle/product/fmw/oracle_common"
	export ESS_ORACLE_HOME
fi

# Startup parameters for STARTUP_GROUP ESS-MGD-SVRS

if [ "${STARTUP_GROUP}" = "ESS-MGD-SVRS" ] ; then
	# Java system properties.
	SERVER_SYSTEM_PROPERTIES="-Dopss.version=12.2.1.3 -Digf.arisidbeans.carmlloc=${ORACLE_DOMAIN_CONFIG_DIR}/carml -Digf.arisidstack.home=${ORACLE_DOMAIN_CONFIG_DIR}/arisidprovider -Doracle.security.jps.config=${DOMAIN_HOME}/config/fmwconfig/jps-config.xml -Doracle.deployed.app.dir=${DOMAIN_HOME}/servers/${SERVER_NAME}/tmp/_WL_user -Doracle.deployed.app.ext=/- -Dweblogic.alternateTypesDirectory=${COMMON_COMPONENTS_HOME}/modules/oracle.ossoiap,${COMMON_COMPONENTS_HOME}/modules/oracle.oamprovider,${COMMON_COMPONENTS_HOME}/modules/oracle.jps -Doracle.mds.filestore.preferred=${ORACLE_FORCE_MDS_FILESTORE} -Dadf.version=12.2.1.3.0 -Dweblogic.jdbc.remoteEnabled=true -Dcommon.components.home=${COMMON_COMPONENTS_HOME} -Djrf.version=12.2.2 -Dorg.apache.commons.logging.Log=org.apache.commons.logging.impl.Jdk14Logger -Ddomain.home=${DOMAIN_HOME} -Doracle.server.config.dir=${ORACLE_DOMAIN_CONFIG_DIR}/servers/${SERVER_NAME} -Doracle.domain.config.dir=${ORACLE_DOMAIN_CONFIG_DIR} -Doracle.ess.home=${ESS_ORACLE_HOME}"
	export SERVER_SYSTEM_PROPERTIES
	# Java protocol handlers.
	JAVA_OPTIONS="${JAVA_OPTIONS} -Djava.protocol.handler.pkgs=oracle.mds.net.protocol|oracle.fabric.common.classloaderurl.handler|oracle.fabric.common.uddiurl.handler|oracle.bpm.io.fs.protocol"
	export JAVA_OPTIONS
	# PRE_CLASSPATH.
	if [ "${PRE_CLASSPATH}" != "" ] ; then
		PRE_CLASSPATH="${PRE_CLASSPATH}${CLASSPATHSEP}${MW_HOME}/oracle_common/modules/com.oracle.webservices.wls.wls-jaxrpc.jar${CLASSPATHSEP}${COMMON_COMPONENTS_HOME}/modules/features/com.oracle.db.jdbc7-dms.jar"
		export PRE_CLASSPATH
	else
		PRE_CLASSPATH="${MW_HOME}/oracle_common/modules/com.oracle.webservices.wls.wls-jaxrpc.jar${CLASSPATHSEP}${COMMON_COMPONENTS_HOME}/modules/features/com.oracle.db.jdbc7-dms.jar"
		export PRE_CLASSPATH
	fi
	# POST_CLASSPATH.
	if [ "${POST_CLASSPATH}" != "" ] ; then
		POST_CLASSPATH="${POST_CLASSPATH}${CLASSPATHSEP}${COMMON_COMPONENTS_HOME}/modules/internal/features/jrf_wlsFmw_oracle.jrf.wls.classpath.jar${CLASSPATHSEP}${SOA_PRODUCT_HOME}/soa/modules/oracle.soa.fabric_11.1.1/tracking-api.jar${CLASSPATHSEP}${SOA_PRODUCT_HOME}/soa/modules/commons-cli-1.1.jar${CLASSPATHSEP}${SOA_PRODUCT_HOME}/soa/modules/oracle.soa.mgmt_11.1.1/soa-infra-mgmt.jar${CLASSPATHSEP}${ESS_ORACLE_HOME}/ess/archives/ess-sec.jar"
		export POST_CLASSPATH
	else
		POST_CLASSPATH="${COMMON_COMPONENTS_HOME}/modules/internal/features/jrf_wlsFmw_oracle.jrf.wls.classpath.jar${CLASSPATHSEP}${SOA_PRODUCT_HOME}/soa/modules/oracle.soa.fabric_11.1.1/tracking-api.jar${CLASSPATHSEP}${SOA_PRODUCT_HOME}/soa/modules/commons-cli-1.1.jar${CLASSPATHSEP}${SOA_PRODUCT_HOME}/soa/modules/oracle.soa.mgmt_11.1.1/soa-infra-mgmt.jar${CLASSPATHSEP}${ESS_ORACLE_HOME}/ess/archives/ess-sec.jar"
		export POST_CLASSPATH
	fi
	# 32 bit JVM memory settings
	SERVER_MEM_ARGS_32="-Xms768m -Xmx1536m"
	export SERVER_MEM_ARGS_32
	SERVER_MEM_ARGS_32HotSpot="-Xms768m -Xmx1536m"
	export SERVER_MEM_ARGS_32HotSpot
	SERVER_MEM_ARGS_32JRockit="-Xms768m -Xmx1536m"
	export SERVER_MEM_ARGS_32JRockit
	# 64 bit JVM memory settings
	#SERVER_MEM_ARGS_64="-Xms768m -Xmx1536m"
	SERVER_MEM_ARGS_64="-Xms512m -Xmx1g"
	export SERVER_MEM_ARGS_64
	#SERVER_MEM_ARGS_64HotSpot="-Xms768m -Xmx1536m"
	SERVER_MEM_ARGS_64HotSpot="-Xms512m -Xmx1g"
        export SERVER_MEM_ARGS_64HotSpot
	SERVER_MEM_ARGS_64JRockit="-Xms768m -Xmx1536m"
	export SERVER_MEM_ARGS_64JRockit
	# Other java arguments
	SERVER_GENERIC_ARGS_PRODUCTION="-d64"
	export SERVER_GENERIC_ARGS_PRODUCTION
	SERVER_GENERIC_ARGS_DEVELOPMENT="-d64"
	export SERVER_GENERIC_ARGS_DEVELOPMENT
	# Other JVM arguments
fi

# Environmental Variables for STARTUP_GROUP SOA-DYN-CLUSTER-ONLY

if [ "${STARTUP_GROUP}" = "SOA-DYN-CLUSTER-ONLY" ] ; then
	COMMON_COMPONENTS_HOME="/SOA/u01/oracle/product/fmw/oracle_common"
	export COMMON_COMPONENTS_HOME
	ORACLE_DOMAIN_CONFIG_DIR="${DOMAIN_HOME}/config/fmwconfig"
	export ORACLE_DOMAIN_CONFIG_DIR
	EXTRA_JAVA_PROPERTIES="${EXTRA_JAVA_PROPERTIES} -Dem.oracle.home=/SOA/u01/oracle/product/fmw/em"
	export EXTRA_JAVA_PROPERTIES
	SOA_PRODUCT_HOME="/SOA/u01/oracle/product/fmw/soa"
	export SOA_PRODUCT_HOME
	CLASS_CACHE="true"
	export CLASS_CACHE
	ESS_ORACLE_HOME="/SOA/u01/oracle/product/fmw/oracle_common"
	export ESS_ORACLE_HOME
fi

# Startup parameters for STARTUP_GROUP SOA-DYN-CLUSTER-ONLY

if [ "${STARTUP_GROUP}" = "SOA-DYN-CLUSTER-ONLY" ] ; then
	# Java system properties.
	SERVER_SYSTEM_PROPERTIES="-Dopss.version=12.2.1.3 -Digf.arisidbeans.carmlloc=${ORACLE_DOMAIN_CONFIG_DIR}/carml -Digf.arisidstack.home=${ORACLE_DOMAIN_CONFIG_DIR}/arisidprovider -Doracle.security.jps.config=${DOMAIN_HOME}/config/fmwconfig/jps-config.xml -Doracle.deployed.app.dir=${DOMAIN_HOME}/servers/${SERVER_NAME}/tmp/_WL_user -Doracle.deployed.app.ext=/- -Dweblogic.alternateTypesDirectory=${COMMON_COMPONENTS_HOME}/modules/oracle.ossoiap,${COMMON_COMPONENTS_HOME}/modules/oracle.oamprovider,${COMMON_COMPONENTS_HOME}/modules/oracle.jps -Doracle.mds.filestore.preferred=${ORACLE_FORCE_MDS_FILESTORE} -Dadf.version=12.2.1.3.0 -Dweblogic.jdbc.remoteEnabled=true -Dcommon.components.home=${COMMON_COMPONENTS_HOME} -Djrf.version=12.2.2 -Dorg.apache.commons.logging.Log=org.apache.commons.logging.impl.Jdk14Logger -Ddomain.home=${DOMAIN_HOME} -Doracle.server.config.dir=${ORACLE_DOMAIN_CONFIG_DIR}/servers/${SERVER_NAME} -Doracle.domain.config.dir=${ORACLE_DOMAIN_CONFIG_DIR} -Doracle.ess.home=${ESS_ORACLE_HOME}"
	export SERVER_SYSTEM_PROPERTIES
	# Java protocol handlers.
	JAVA_OPTIONS="${JAVA_OPTIONS} -Djava.protocol.handler.pkgs=oracle.mds.net.protocol|oracle.fabric.common.classloaderurl.handler|oracle.fabric.common.uddiurl.handler|oracle.bpm.io.fs.protocol"
	export JAVA_OPTIONS
	# PRE_CLASSPATH.
	if [ "${PRE_CLASSPATH}" != "" ] ; then
		PRE_CLASSPATH="${PRE_CLASSPATH}${CLASSPATHSEP}${MW_HOME}/oracle_common/modules/com.oracle.webservices.wls.wls-jaxrpc.jar${CLASSPATHSEP}${COMMON_COMPONENTS_HOME}/modules/features/com.oracle.db.jdbc7-dms.jar"
		export PRE_CLASSPATH
	else
		PRE_CLASSPATH="${MW_HOME}/oracle_common/modules/com.oracle.webservices.wls.wls-jaxrpc.jar${CLASSPATHSEP}${COMMON_COMPONENTS_HOME}/modules/features/com.oracle.db.jdbc7-dms.jar"
		export PRE_CLASSPATH
	fi
	# POST_CLASSPATH.
	if [ "${POST_CLASSPATH}" != "" ] ; then
		POST_CLASSPATH="${POST_CLASSPATH}${CLASSPATHSEP}${COMMON_COMPONENTS_HOME}/modules/internal/features/jrf_wlsFmw_oracle.jrf.wls.classpath.jar${CLASSPATHSEP}${SOA_PRODUCT_HOME}/soa/modules/oracle.soa.fabric_11.1.1/tracking-api.jar${CLASSPATHSEP}${SOA_PRODUCT_HOME}/soa/modules/commons-cli-1.1.jar${CLASSPATHSEP}${SOA_PRODUCT_HOME}/soa/modules/oracle.soa.mgmt_11.1.1/soa-infra-mgmt.jar${CLASSPATHSEP}${ESS_ORACLE_HOME}/ess/archives/ess-sec.jar"
		export POST_CLASSPATH
	else
		POST_CLASSPATH="${COMMON_COMPONENTS_HOME}/modules/internal/features/jrf_wlsFmw_oracle.jrf.wls.classpath.jar${CLASSPATHSEP}${SOA_PRODUCT_HOME}/soa/modules/oracle.soa.fabric_11.1.1/tracking-api.jar${CLASSPATHSEP}${SOA_PRODUCT_HOME}/soa/modules/commons-cli-1.1.jar${CLASSPATHSEP}${SOA_PRODUCT_HOME}/soa/modules/oracle.soa.mgmt_11.1.1/soa-infra-mgmt.jar${CLASSPATHSEP}${ESS_ORACLE_HOME}/ess/archives/ess-sec.jar"
		export POST_CLASSPATH
	fi
	# 32 bit JVM memory settings
	SERVER_MEM_ARGS_32="-Xms768m -Xmx1536m"
	export SERVER_MEM_ARGS_32
	SERVER_MEM_ARGS_32HotSpot="-Xms768m -Xmx1536m"
	export SERVER_MEM_ARGS_32HotSpot
	SERVER_MEM_ARGS_32JRockit="-Xms768m -Xmx1536m"
	export SERVER_MEM_ARGS_32JRockit
	# 64 bit JVM memory settings
	SERVER_MEM_ARGS_64="-Xms768m -Xmx1536m"
	export SERVER_MEM_ARGS_64
	SERVER_MEM_ARGS_64HotSpot="-Xms768m -Xmx1536m"
	export SERVER_MEM_ARGS_64HotSpot
	SERVER_MEM_ARGS_64JRockit="-Xms768m -Xmx1536m"
	export SERVER_MEM_ARGS_64JRockit
	# Other java arguments
	SERVER_GENERIC_ARGS_PRODUCTION="-d64"
	export SERVER_GENERIC_ARGS_PRODUCTION
	SERVER_GENERIC_ARGS_DEVELOPMENT="-d64"
	export SERVER_GENERIC_ARGS_DEVELOPMENT
	# Other JVM arguments
fi

# Environmental Variables for STARTUP_GROUP UMS-DRIVER-APNS-MGD-SVR

if [ "${STARTUP_GROUP}" = "UMS-DRIVER-APNS-MGD-SVR" ] ; then
	COMMON_COMPONENTS_HOME="/SOA/u01/oracle/product/fmw/oracle_common"
	export COMMON_COMPONENTS_HOME
	ORACLE_DOMAIN_CONFIG_DIR="${DOMAIN_HOME}/config/fmwconfig"
	export ORACLE_DOMAIN_CONFIG_DIR
	EXTRA_JAVA_PROPERTIES="${EXTRA_JAVA_PROPERTIES} -Dem.oracle.home=/SOA/u01/oracle/product/fmw/em"
	export EXTRA_JAVA_PROPERTIES
	SOA_PRODUCT_HOME="/SOA/u01/oracle/product/fmw/soa"
	export SOA_PRODUCT_HOME
	CLASS_CACHE="true"
	export CLASS_CACHE
	ESS_ORACLE_HOME="/SOA/u01/oracle/product/fmw/oracle_common"
	export ESS_ORACLE_HOME
fi

# Startup parameters for STARTUP_GROUP UMS-DRIVER-APNS-MGD-SVR

if [ "${STARTUP_GROUP}" = "UMS-DRIVER-APNS-MGD-SVR" ] ; then
	# Java system properties.
	SERVER_SYSTEM_PROPERTIES="-Dopss.version=12.2.1.3 -Digf.arisidbeans.carmlloc=${ORACLE_DOMAIN_CONFIG_DIR}/carml -Digf.arisidstack.home=${ORACLE_DOMAIN_CONFIG_DIR}/arisidprovider -Doracle.security.jps.config=${DOMAIN_HOME}/config/fmwconfig/jps-config.xml -Doracle.deployed.app.dir=${DOMAIN_HOME}/servers/${SERVER_NAME}/tmp/_WL_user -Doracle.deployed.app.ext=/- -Dweblogic.alternateTypesDirectory=${COMMON_COMPONENTS_HOME}/modules/oracle.ossoiap,${COMMON_COMPONENTS_HOME}/modules/oracle.oamprovider,${COMMON_COMPONENTS_HOME}/modules/oracle.jps -Doracle.mds.filestore.preferred=${ORACLE_FORCE_MDS_FILESTORE} -Dadf.version=12.2.1.3.0 -Dweblogic.jdbc.remoteEnabled=true -Dcommon.components.home=${COMMON_COMPONENTS_HOME} -Djrf.version=12.2.2 -Dorg.apache.commons.logging.Log=org.apache.commons.logging.impl.Jdk14Logger -Ddomain.home=${DOMAIN_HOME} -Doracle.server.config.dir=${ORACLE_DOMAIN_CONFIG_DIR}/servers/${SERVER_NAME} -Doracle.domain.config.dir=${ORACLE_DOMAIN_CONFIG_DIR} -Doracle.ess.home=${ESS_ORACLE_HOME}"
	export SERVER_SYSTEM_PROPERTIES
	# Java protocol handlers.
	JAVA_OPTIONS="${JAVA_OPTIONS} -Djava.protocol.handler.pkgs=oracle.mds.net.protocol|oracle.fabric.common.classloaderurl.handler|oracle.fabric.common.uddiurl.handler|oracle.bpm.io.fs.protocol"
	export JAVA_OPTIONS
	# PRE_CLASSPATH.
	if [ "${PRE_CLASSPATH}" != "" ] ; then
		PRE_CLASSPATH="${PRE_CLASSPATH}${CLASSPATHSEP}${MW_HOME}/oracle_common/modules/com.oracle.webservices.wls.wls-jaxrpc.jar${CLASSPATHSEP}${COMMON_COMPONENTS_HOME}/modules/features/com.oracle.db.jdbc7-dms.jar"
		export PRE_CLASSPATH
	else
		PRE_CLASSPATH="${MW_HOME}/oracle_common/modules/com.oracle.webservices.wls.wls-jaxrpc.jar${CLASSPATHSEP}${COMMON_COMPONENTS_HOME}/modules/features/com.oracle.db.jdbc7-dms.jar"
		export PRE_CLASSPATH
	fi
	# POST_CLASSPATH.
	if [ "${POST_CLASSPATH}" != "" ] ; then
		POST_CLASSPATH="${POST_CLASSPATH}${CLASSPATHSEP}${COMMON_COMPONENTS_HOME}/modules/internal/features/jrf_wlsFmw_oracle.jrf.wls.classpath.jar${CLASSPATHSEP}${SOA_PRODUCT_HOME}/soa/modules/oracle.soa.fabric_11.1.1/tracking-api.jar${CLASSPATHSEP}${SOA_PRODUCT_HOME}/soa/modules/commons-cli-1.1.jar${CLASSPATHSEP}${SOA_PRODUCT_HOME}/soa/modules/oracle.soa.mgmt_11.1.1/soa-infra-mgmt.jar${CLASSPATHSEP}${ESS_ORACLE_HOME}/ess/archives/ess-sec.jar"
		export POST_CLASSPATH
	else
		POST_CLASSPATH="${COMMON_COMPONENTS_HOME}/modules/internal/features/jrf_wlsFmw_oracle.jrf.wls.classpath.jar${CLASSPATHSEP}${SOA_PRODUCT_HOME}/soa/modules/oracle.soa.fabric_11.1.1/tracking-api.jar${CLASSPATHSEP}${SOA_PRODUCT_HOME}/soa/modules/commons-cli-1.1.jar${CLASSPATHSEP}${SOA_PRODUCT_HOME}/soa/modules/oracle.soa.mgmt_11.1.1/soa-infra-mgmt.jar${CLASSPATHSEP}${ESS_ORACLE_HOME}/ess/archives/ess-sec.jar"
		export POST_CLASSPATH
	fi
	# 32 bit JVM memory settings
	SERVER_MEM_ARGS_32="-Xms768m -Xmx1536m"
	export SERVER_MEM_ARGS_32
	SERVER_MEM_ARGS_32HotSpot="-Xms768m -Xmx1536m"
	export SERVER_MEM_ARGS_32HotSpot
	SERVER_MEM_ARGS_32JRockit="-Xms768m -Xmx1536m"
	export SERVER_MEM_ARGS_32JRockit
	# 64 bit JVM memory settings
	SERVER_MEM_ARGS_64="-Xms768m -Xmx1536m"
	export SERVER_MEM_ARGS_64
	SERVER_MEM_ARGS_64HotSpot="-Xms768m -Xmx1536m"
	export SERVER_MEM_ARGS_64HotSpot
	SERVER_MEM_ARGS_64JRockit="-Xms768m -Xmx1536m"
	export SERVER_MEM_ARGS_64JRockit
	# Other java arguments
	SERVER_GENERIC_ARGS_PRODUCTION="-d64"
	export SERVER_GENERIC_ARGS_PRODUCTION
	SERVER_GENERIC_ARGS_DEVELOPMENT="-d64"
	export SERVER_GENERIC_ARGS_DEVELOPMENT
	# Other JVM arguments
fi

# Environmental Variables for STARTUP_GROUP SOA-MGD-SVRS

if [ "${STARTUP_GROUP}" = "SOA-MGD-SVRS" ] ; then
	COMMON_COMPONENTS_HOME="/SOA/u01/oracle/product/fmw/oracle_common"
	export COMMON_COMPONENTS_HOME
	ORACLE_DOMAIN_CONFIG_DIR="${DOMAIN_HOME}/config/fmwconfig"
	export ORACLE_DOMAIN_CONFIG_DIR
	EXTRA_JAVA_PROPERTIES="${EXTRA_JAVA_PROPERTIES} -Dem.oracle.home=/SOA/u01/oracle/product/fmw/em"
	export EXTRA_JAVA_PROPERTIES
	SOA_PRODUCT_HOME="/SOA/u01/oracle/product/fmw/soa"
	export SOA_PRODUCT_HOME
	CLASS_CACHE="true"
	export CLASS_CACHE
	ESS_ORACLE_HOME="/SOA/u01/oracle/product/fmw/oracle_common"
	export ESS_ORACLE_HOME
fi

# Startup parameters for STARTUP_GROUP SOA-MGD-SVRS

if [ "${STARTUP_GROUP}" = "SOA-MGD-SVRS" ] ; then
	# Java system properties.
	SERVER_SYSTEM_PROPERTIES="-Dopss.version=12.2.1.3 -Digf.arisidbeans.carmlloc=${ORACLE_DOMAIN_CONFIG_DIR}/carml -Digf.arisidstack.home=${ORACLE_DOMAIN_CONFIG_DIR}/arisidprovider -Doracle.security.jps.config=${DOMAIN_HOME}/config/fmwconfig/jps-config.xml -Doracle.deployed.app.dir=${DOMAIN_HOME}/servers/${SERVER_NAME}/tmp/_WL_user -Doracle.deployed.app.ext=/- -Dweblogic.alternateTypesDirectory=${COMMON_COMPONENTS_HOME}/modules/oracle.ossoiap,${COMMON_COMPONENTS_HOME}/modules/oracle.oamprovider,${COMMON_COMPONENTS_HOME}/modules/oracle.jps -Doracle.mds.filestore.preferred=${ORACLE_FORCE_MDS_FILESTORE} -Dadf.version=12.2.1.3.0 -Dweblogic.jdbc.remoteEnabled=true -Dcommon.components.home=${COMMON_COMPONENTS_HOME} -Djrf.version=12.2.2 -Dorg.apache.commons.logging.Log=org.apache.commons.logging.impl.Jdk14Logger -Ddomain.home=${DOMAIN_HOME} -Doracle.server.config.dir=${ORACLE_DOMAIN_CONFIG_DIR}/servers/${SERVER_NAME} -Doracle.domain.config.dir=${ORACLE_DOMAIN_CONFIG_DIR} -Doracle.ess.home=${ESS_ORACLE_HOME}"
	export SERVER_SYSTEM_PROPERTIES
	# Java protocol handlers.
	JAVA_OPTIONS="${JAVA_OPTIONS} -Djava.protocol.handler.pkgs=oracle.mds.net.protocol|oracle.fabric.common.classloaderurl.handler|oracle.fabric.common.uddiurl.handler|oracle.bpm.io.fs.protocol"
	export JAVA_OPTIONS
	# PRE_CLASSPATH.
	if [ "${PRE_CLASSPATH}" != "" ] ; then
		PRE_CLASSPATH="${PRE_CLASSPATH}${CLASSPATHSEP}${MW_HOME}/oracle_common/modules/com.oracle.webservices.wls.wls-jaxrpc.jar${CLASSPATHSEP}${COMMON_COMPONENTS_HOME}/modules/features/com.oracle.db.jdbc7-dms.jar"
		export PRE_CLASSPATH
	else
		PRE_CLASSPATH="${MW_HOME}/oracle_common/modules/com.oracle.webservices.wls.wls-jaxrpc.jar${CLASSPATHSEP}${COMMON_COMPONENTS_HOME}/modules/features/com.oracle.db.jdbc7-dms.jar"
		export PRE_CLASSPATH
	fi
	# POST_CLASSPATH.
	if [ "${POST_CLASSPATH}" != "" ] ; then
		POST_CLASSPATH="${POST_CLASSPATH}${CLASSPATHSEP}${COMMON_COMPONENTS_HOME}/modules/internal/features/jrf_wlsFmw_oracle.jrf.wls.classpath.jar${CLASSPATHSEP}${SOA_PRODUCT_HOME}/soa/modules/oracle.soa.fabric_11.1.1/tracking-api.jar${CLASSPATHSEP}${SOA_PRODUCT_HOME}/soa/modules/commons-cli-1.1.jar${CLASSPATHSEP}${SOA_PRODUCT_HOME}/soa/modules/oracle.soa.mgmt_11.1.1/soa-infra-mgmt.jar${CLASSPATHSEP}${ESS_ORACLE_HOME}/ess/archives/ess-sec.jar"
		export POST_CLASSPATH
	else
		POST_CLASSPATH="${COMMON_COMPONENTS_HOME}/modules/internal/features/jrf_wlsFmw_oracle.jrf.wls.classpath.jar${CLASSPATHSEP}${SOA_PRODUCT_HOME}/soa/modules/oracle.soa.fabric_11.1.1/tracking-api.jar${CLASSPATHSEP}${SOA_PRODUCT_HOME}/soa/modules/commons-cli-1.1.jar${CLASSPATHSEP}${SOA_PRODUCT_HOME}/soa/modules/oracle.soa.mgmt_11.1.1/soa-infra-mgmt.jar${CLASSPATHSEP}${ESS_ORACLE_HOME}/ess/archives/ess-sec.jar"
		export POST_CLASSPATH
	fi
	# 32 bit JVM memory settings
	SERVER_MEM_ARGS_32="-Xms768m -Xmx1536m"
	export SERVER_MEM_ARGS_32
	SERVER_MEM_ARGS_32HotSpot="-Xms768m -Xmx1536m"
	export SERVER_MEM_ARGS_32HotSpot
	SERVER_MEM_ARGS_32JRockit="-Xms768m -Xmx1536m"
	export SERVER_MEM_ARGS_32JRockit
	# 64 bit JVM memory settings
	#SERVER_MEM_ARGS_64="-Xms768m -Xmx1536m"
	SERVER_MEM_ARGS_64="-Xms2g -Xmx4g"
	export SERVER_MEM_ARGS_64
	#SERVER_MEM_ARGS_64HotSpot="-Xms768m -Xmx1536m"
	SERVER_MEM_ARGS_64HotSpot="-Xms2g -Xmx4g -XX:+UseConcMarkSweepGC -XX:+CMSIncrementalMode"
    export SERVER_MEM_ARGS_64HotSpot
	SERVER_MEM_ARGS_64JRockit="-Xms768m -Xmx1536m"
	export SERVER_MEM_ARGS_64JRockit
	# Other java arguments
	SERVER_GENERIC_ARGS_PRODUCTION="-d64"
	export SERVER_GENERIC_ARGS_PRODUCTION
	SERVER_GENERIC_ARGS_DEVELOPMENT="-d64"
	export SERVER_GENERIC_ARGS_DEVELOPMENT
	# Other JVM arguments
fi

# Environmental Variables for STARTUP_GROUP UMS-DRIVER-TWITTER-MGD-SVR

if [ "${STARTUP_GROUP}" = "UMS-DRIVER-TWITTER-MGD-SVR" ] ; then
	COMMON_COMPONENTS_HOME="/SOA/u01/oracle/product/fmw/oracle_common"
	export COMMON_COMPONENTS_HOME
	ORACLE_DOMAIN_CONFIG_DIR="${DOMAIN_HOME}/config/fmwconfig"
	export ORACLE_DOMAIN_CONFIG_DIR
	EXTRA_JAVA_PROPERTIES="${EXTRA_JAVA_PROPERTIES} -Dem.oracle.home=/SOA/u01/oracle/product/fmw/em"
	export EXTRA_JAVA_PROPERTIES
	SOA_PRODUCT_HOME="/SOA/u01/oracle/product/fmw/soa"
	export SOA_PRODUCT_HOME
	CLASS_CACHE="true"
	export CLASS_CACHE
	ESS_ORACLE_HOME="/SOA/u01/oracle/product/fmw/oracle_common"
	export ESS_ORACLE_HOME
fi

# Startup parameters for STARTUP_GROUP UMS-DRIVER-TWITTER-MGD-SVR

if [ "${STARTUP_GROUP}" = "UMS-DRIVER-TWITTER-MGD-SVR" ] ; then
	# Java system properties.
	SERVER_SYSTEM_PROPERTIES="-Dopss.version=12.2.1.3 -Digf.arisidbeans.carmlloc=${ORACLE_DOMAIN_CONFIG_DIR}/carml -Digf.arisidstack.home=${ORACLE_DOMAIN_CONFIG_DIR}/arisidprovider -Doracle.security.jps.config=${DOMAIN_HOME}/config/fmwconfig/jps-config.xml -Doracle.deployed.app.dir=${DOMAIN_HOME}/servers/${SERVER_NAME}/tmp/_WL_user -Doracle.deployed.app.ext=/- -Dweblogic.alternateTypesDirectory=${COMMON_COMPONENTS_HOME}/modules/oracle.ossoiap,${COMMON_COMPONENTS_HOME}/modules/oracle.oamprovider,${COMMON_COMPONENTS_HOME}/modules/oracle.jps -Doracle.mds.filestore.preferred=${ORACLE_FORCE_MDS_FILESTORE} -Dadf.version=12.2.1.3.0 -Dweblogic.jdbc.remoteEnabled=true -Dcommon.components.home=${COMMON_COMPONENTS_HOME} -Djrf.version=12.2.2 -Dorg.apache.commons.logging.Log=org.apache.commons.logging.impl.Jdk14Logger -Ddomain.home=${DOMAIN_HOME} -Doracle.server.config.dir=${ORACLE_DOMAIN_CONFIG_DIR}/servers/${SERVER_NAME} -Doracle.domain.config.dir=${ORACLE_DOMAIN_CONFIG_DIR} -Doracle.ess.home=${ESS_ORACLE_HOME}"
	export SERVER_SYSTEM_PROPERTIES
	# Java protocol handlers.
	JAVA_OPTIONS="${JAVA_OPTIONS} -Djava.protocol.handler.pkgs=oracle.mds.net.protocol|oracle.fabric.common.classloaderurl.handler|oracle.fabric.common.uddiurl.handler|oracle.bpm.io.fs.protocol"
	export JAVA_OPTIONS
	# PRE_CLASSPATH.
	if [ "${PRE_CLASSPATH}" != "" ] ; then
		PRE_CLASSPATH="${PRE_CLASSPATH}${CLASSPATHSEP}${MW_HOME}/oracle_common/modules/com.oracle.webservices.wls.wls-jaxrpc.jar${CLASSPATHSEP}${COMMON_COMPONENTS_HOME}/modules/features/com.oracle.db.jdbc7-dms.jar"
		export PRE_CLASSPATH
	else
		PRE_CLASSPATH="${MW_HOME}/oracle_common/modules/com.oracle.webservices.wls.wls-jaxrpc.jar${CLASSPATHSEP}${COMMON_COMPONENTS_HOME}/modules/features/com.oracle.db.jdbc7-dms.jar"
		export PRE_CLASSPATH
	fi
	# POST_CLASSPATH.
	if [ "${POST_CLASSPATH}" != "" ] ; then
		POST_CLASSPATH="${POST_CLASSPATH}${CLASSPATHSEP}${COMMON_COMPONENTS_HOME}/modules/internal/features/jrf_wlsFmw_oracle.jrf.wls.classpath.jar${CLASSPATHSEP}${SOA_PRODUCT_HOME}/soa/modules/oracle.soa.fabric_11.1.1/tracking-api.jar${CLASSPATHSEP}${SOA_PRODUCT_HOME}/soa/modules/commons-cli-1.1.jar${CLASSPATHSEP}${SOA_PRODUCT_HOME}/soa/modules/oracle.soa.mgmt_11.1.1/soa-infra-mgmt.jar${CLASSPATHSEP}${ESS_ORACLE_HOME}/ess/archives/ess-sec.jar"
		export POST_CLASSPATH
	else
		POST_CLASSPATH="${COMMON_COMPONENTS_HOME}/modules/internal/features/jrf_wlsFmw_oracle.jrf.wls.classpath.jar${CLASSPATHSEP}${SOA_PRODUCT_HOME}/soa/modules/oracle.soa.fabric_11.1.1/tracking-api.jar${CLASSPATHSEP}${SOA_PRODUCT_HOME}/soa/modules/commons-cli-1.1.jar${CLASSPATHSEP}${SOA_PRODUCT_HOME}/soa/modules/oracle.soa.mgmt_11.1.1/soa-infra-mgmt.jar${CLASSPATHSEP}${ESS_ORACLE_HOME}/ess/archives/ess-sec.jar"
		export POST_CLASSPATH
	fi
	# 32 bit JVM memory settings
	SERVER_MEM_ARGS_32="-Xms768m -Xmx1536m"
	export SERVER_MEM_ARGS_32
	SERVER_MEM_ARGS_32HotSpot="-Xms768m -Xmx1536m"
	export SERVER_MEM_ARGS_32HotSpot
	SERVER_MEM_ARGS_32JRockit="-Xms768m -Xmx1536m"
	export SERVER_MEM_ARGS_32JRockit
	# 64 bit JVM memory settings
	SERVER_MEM_ARGS_64="-Xms768m -Xmx1536m"
	export SERVER_MEM_ARGS_64
	SERVER_MEM_ARGS_64HotSpot="-Xms768m -Xmx1536m"
	export SERVER_MEM_ARGS_64HotSpot
	SERVER_MEM_ARGS_64JRockit="-Xms768m -Xmx1536m"
	export SERVER_MEM_ARGS_64JRockit
	# Other java arguments
	SERVER_GENERIC_ARGS_PRODUCTION="-d64"
	export SERVER_GENERIC_ARGS_PRODUCTION
	SERVER_GENERIC_ARGS_DEVELOPMENT="-d64"
	export SERVER_GENERIC_ARGS_DEVELOPMENT
	# Other JVM arguments
fi

# Environmental Variables for STARTUP_GROUP SOA-MGD-SVRS-ONLY

if [ "${STARTUP_GROUP}" = "SOA-MGD-SVRS-ONLY" ] ; then
	COMMON_COMPONENTS_HOME="/SOA/u01/oracle/product/fmw/oracle_common"
	export COMMON_COMPONENTS_HOME
	ORACLE_DOMAIN_CONFIG_DIR="${DOMAIN_HOME}/config/fmwconfig"
	export ORACLE_DOMAIN_CONFIG_DIR
	EXTRA_JAVA_PROPERTIES="${EXTRA_JAVA_PROPERTIES} -Dem.oracle.home=/SOA/u01/oracle/product/fmw/em"
	export EXTRA_JAVA_PROPERTIES
	SOA_PRODUCT_HOME="/SOA/u01/oracle/product/fmw/soa"
	export SOA_PRODUCT_HOME
	CLASS_CACHE="true"
	export CLASS_CACHE
	ESS_ORACLE_HOME="/SOA/u01/oracle/product/fmw/oracle_common"
	export ESS_ORACLE_HOME
fi

# Startup parameters for STARTUP_GROUP SOA-MGD-SVRS-ONLY

if [ "${STARTUP_GROUP}" = "SOA-MGD-SVRS-ONLY" ] ; then
	# Java system properties.
	SERVER_SYSTEM_PROPERTIES="-Dopss.version=12.2.1.3 -Digf.arisidbeans.carmlloc=${ORACLE_DOMAIN_CONFIG_DIR}/carml -Digf.arisidstack.home=${ORACLE_DOMAIN_CONFIG_DIR}/arisidprovider -Doracle.security.jps.config=${DOMAIN_HOME}/config/fmwconfig/jps-config.xml -Doracle.deployed.app.dir=${DOMAIN_HOME}/servers/${SERVER_NAME}/tmp/_WL_user -Doracle.deployed.app.ext=/- -Dweblogic.alternateTypesDirectory=${COMMON_COMPONENTS_HOME}/modules/oracle.ossoiap,${COMMON_COMPONENTS_HOME}/modules/oracle.oamprovider,${COMMON_COMPONENTS_HOME}/modules/oracle.jps -Doracle.mds.filestore.preferred=${ORACLE_FORCE_MDS_FILESTORE} -Dadf.version=12.2.1.3.0 -Dweblogic.jdbc.remoteEnabled=true -Dcommon.components.home=${COMMON_COMPONENTS_HOME} -Djrf.version=12.2.2 -Dorg.apache.commons.logging.Log=org.apache.commons.logging.impl.Jdk14Logger -Ddomain.home=${DOMAIN_HOME} -Doracle.server.config.dir=${ORACLE_DOMAIN_CONFIG_DIR}/servers/${SERVER_NAME} -Doracle.domain.config.dir=${ORACLE_DOMAIN_CONFIG_DIR} -Doracle.ess.home=${ESS_ORACLE_HOME}"
	export SERVER_SYSTEM_PROPERTIES
	# Java protocol handlers.
	JAVA_OPTIONS="${JAVA_OPTIONS} -Djava.protocol.handler.pkgs=oracle.mds.net.protocol|oracle.fabric.common.classloaderurl.handler|oracle.fabric.common.uddiurl.handler|oracle.bpm.io.fs.protocol"
	export JAVA_OPTIONS
	# PRE_CLASSPATH.
	if [ "${PRE_CLASSPATH}" != "" ] ; then
		PRE_CLASSPATH="${PRE_CLASSPATH}${CLASSPATHSEP}${MW_HOME}/oracle_common/modules/com.oracle.webservices.wls.wls-jaxrpc.jar${CLASSPATHSEP}${COMMON_COMPONENTS_HOME}/modules/features/com.oracle.db.jdbc7-dms.jar"
		export PRE_CLASSPATH
	else
		PRE_CLASSPATH="${MW_HOME}/oracle_common/modules/com.oracle.webservices.wls.wls-jaxrpc.jar${CLASSPATHSEP}${COMMON_COMPONENTS_HOME}/modules/features/com.oracle.db.jdbc7-dms.jar"
		export PRE_CLASSPATH
	fi
	# POST_CLASSPATH.
	if [ "${POST_CLASSPATH}" != "" ] ; then
		POST_CLASSPATH="${POST_CLASSPATH}${CLASSPATHSEP}${COMMON_COMPONENTS_HOME}/modules/internal/features/jrf_wlsFmw_oracle.jrf.wls.classpath.jar${CLASSPATHSEP}${SOA_PRODUCT_HOME}/soa/modules/oracle.soa.fabric_11.1.1/tracking-api.jar${CLASSPATHSEP}${SOA_PRODUCT_HOME}/soa/modules/commons-cli-1.1.jar${CLASSPATHSEP}${SOA_PRODUCT_HOME}/soa/modules/oracle.soa.mgmt_11.1.1/soa-infra-mgmt.jar${CLASSPATHSEP}${ESS_ORACLE_HOME}/ess/archives/ess-sec.jar"
		export POST_CLASSPATH
	else
		POST_CLASSPATH="${COMMON_COMPONENTS_HOME}/modules/internal/features/jrf_wlsFmw_oracle.jrf.wls.classpath.jar${CLASSPATHSEP}${SOA_PRODUCT_HOME}/soa/modules/oracle.soa.fabric_11.1.1/tracking-api.jar${CLASSPATHSEP}${SOA_PRODUCT_HOME}/soa/modules/commons-cli-1.1.jar${CLASSPATHSEP}${SOA_PRODUCT_HOME}/soa/modules/oracle.soa.mgmt_11.1.1/soa-infra-mgmt.jar${CLASSPATHSEP}${ESS_ORACLE_HOME}/ess/archives/ess-sec.jar"
		export POST_CLASSPATH
	fi
	# 32 bit JVM memory settings
	SERVER_MEM_ARGS_32="-Xms768m -Xmx1536m"
	export SERVER_MEM_ARGS_32
	SERVER_MEM_ARGS_32HotSpot="-Xms768m -Xmx1536m"
	export SERVER_MEM_ARGS_32HotSpot
	SERVER_MEM_ARGS_32JRockit="-Xms768m -Xmx1536m"
	export SERVER_MEM_ARGS_32JRockit
	# 64 bit JVM memory settings
	SERVER_MEM_ARGS_64="-Xms768m -Xmx1536m"
	export SERVER_MEM_ARGS_64
	SERVER_MEM_ARGS_64HotSpot="-Xms768m -Xmx1536m"
	export SERVER_MEM_ARGS_64HotSpot
	SERVER_MEM_ARGS_64JRockit="-Xms768m -Xmx1536m"
	export SERVER_MEM_ARGS_64JRockit
	# Other java arguments
	SERVER_GENERIC_ARGS_PRODUCTION="-d64"
	export SERVER_GENERIC_ARGS_PRODUCTION
	SERVER_GENERIC_ARGS_DEVELOPMENT="-d64"
	export SERVER_GENERIC_ARGS_DEVELOPMENT
	# Other JVM arguments
fi

# Environmental Variables for STARTUP_GROUP UMS-DRIVER-XMPP-MGD-SVR

if [ "${STARTUP_GROUP}" = "UMS-DRIVER-XMPP-MGD-SVR" ] ; then
	COMMON_COMPONENTS_HOME="/SOA/u01/oracle/product/fmw/oracle_common"
	export COMMON_COMPONENTS_HOME
	ORACLE_DOMAIN_CONFIG_DIR="${DOMAIN_HOME}/config/fmwconfig"
	export ORACLE_DOMAIN_CONFIG_DIR
	EXTRA_JAVA_PROPERTIES="${EXTRA_JAVA_PROPERTIES} -Dem.oracle.home=/SOA/u01/oracle/product/fmw/em"
	export EXTRA_JAVA_PROPERTIES
	SOA_PRODUCT_HOME="/SOA/u01/oracle/product/fmw/soa"
	export SOA_PRODUCT_HOME
	CLASS_CACHE="true"
	export CLASS_CACHE
	ESS_ORACLE_HOME="/SOA/u01/oracle/product/fmw/oracle_common"
	export ESS_ORACLE_HOME
fi

# Startup parameters for STARTUP_GROUP UMS-DRIVER-XMPP-MGD-SVR

if [ "${STARTUP_GROUP}" = "UMS-DRIVER-XMPP-MGD-SVR" ] ; then
	# Java system properties.
	SERVER_SYSTEM_PROPERTIES="-Dopss.version=12.2.1.3 -Digf.arisidbeans.carmlloc=${ORACLE_DOMAIN_CONFIG_DIR}/carml -Digf.arisidstack.home=${ORACLE_DOMAIN_CONFIG_DIR}/arisidprovider -Doracle.security.jps.config=${DOMAIN_HOME}/config/fmwconfig/jps-config.xml -Doracle.deployed.app.dir=${DOMAIN_HOME}/servers/${SERVER_NAME}/tmp/_WL_user -Doracle.deployed.app.ext=/- -Dweblogic.alternateTypesDirectory=${COMMON_COMPONENTS_HOME}/modules/oracle.ossoiap,${COMMON_COMPONENTS_HOME}/modules/oracle.oamprovider,${COMMON_COMPONENTS_HOME}/modules/oracle.jps -Doracle.mds.filestore.preferred=${ORACLE_FORCE_MDS_FILESTORE} -Dadf.version=12.2.1.3.0 -Dweblogic.jdbc.remoteEnabled=true -Dcommon.components.home=${COMMON_COMPONENTS_HOME} -Djrf.version=12.2.2 -Dorg.apache.commons.logging.Log=org.apache.commons.logging.impl.Jdk14Logger -Ddomain.home=${DOMAIN_HOME} -Doracle.server.config.dir=${ORACLE_DOMAIN_CONFIG_DIR}/servers/${SERVER_NAME} -Doracle.domain.config.dir=${ORACLE_DOMAIN_CONFIG_DIR} -Doracle.ess.home=${ESS_ORACLE_HOME}"
	export SERVER_SYSTEM_PROPERTIES
	# Java protocol handlers.
	JAVA_OPTIONS="${JAVA_OPTIONS} -Djava.protocol.handler.pkgs=oracle.mds.net.protocol|oracle.fabric.common.classloaderurl.handler|oracle.fabric.common.uddiurl.handler|oracle.bpm.io.fs.protocol"
	export JAVA_OPTIONS
	# PRE_CLASSPATH.
	if [ "${PRE_CLASSPATH}" != "" ] ; then
		PRE_CLASSPATH="${PRE_CLASSPATH}${CLASSPATHSEP}${MW_HOME}/oracle_common/modules/com.oracle.webservices.wls.wls-jaxrpc.jar${CLASSPATHSEP}${COMMON_COMPONENTS_HOME}/modules/features/com.oracle.db.jdbc7-dms.jar"
		export PRE_CLASSPATH
	else
		PRE_CLASSPATH="${MW_HOME}/oracle_common/modules/com.oracle.webservices.wls.wls-jaxrpc.jar${CLASSPATHSEP}${COMMON_COMPONENTS_HOME}/modules/features/com.oracle.db.jdbc7-dms.jar"
		export PRE_CLASSPATH
	fi
	# POST_CLASSPATH.
	if [ "${POST_CLASSPATH}" != "" ] ; then
		POST_CLASSPATH="${POST_CLASSPATH}${CLASSPATHSEP}${COMMON_COMPONENTS_HOME}/modules/internal/features/jrf_wlsFmw_oracle.jrf.wls.classpath.jar${CLASSPATHSEP}${SOA_PRODUCT_HOME}/soa/modules/oracle.soa.fabric_11.1.1/tracking-api.jar${CLASSPATHSEP}${SOA_PRODUCT_HOME}/soa/modules/commons-cli-1.1.jar${CLASSPATHSEP}${SOA_PRODUCT_HOME}/soa/modules/oracle.soa.mgmt_11.1.1/soa-infra-mgmt.jar${CLASSPATHSEP}${ESS_ORACLE_HOME}/ess/archives/ess-sec.jar"
		export POST_CLASSPATH
	else
		POST_CLASSPATH="${COMMON_COMPONENTS_HOME}/modules/internal/features/jrf_wlsFmw_oracle.jrf.wls.classpath.jar${CLASSPATHSEP}${SOA_PRODUCT_HOME}/soa/modules/oracle.soa.fabric_11.1.1/tracking-api.jar${CLASSPATHSEP}${SOA_PRODUCT_HOME}/soa/modules/commons-cli-1.1.jar${CLASSPATHSEP}${SOA_PRODUCT_HOME}/soa/modules/oracle.soa.mgmt_11.1.1/soa-infra-mgmt.jar${CLASSPATHSEP}${ESS_ORACLE_HOME}/ess/archives/ess-sec.jar"
		export POST_CLASSPATH
	fi
	# 32 bit JVM memory settings
	SERVER_MEM_ARGS_32="-Xms768m -Xmx1536m"
	export SERVER_MEM_ARGS_32
	SERVER_MEM_ARGS_32HotSpot="-Xms768m -Xmx1536m"
	export SERVER_MEM_ARGS_32HotSpot
	SERVER_MEM_ARGS_32JRockit="-Xms768m -Xmx1536m"
	export SERVER_MEM_ARGS_32JRockit
	# 64 bit JVM memory settings
	SERVER_MEM_ARGS_64="-Xms768m -Xmx1536m"
	export SERVER_MEM_ARGS_64
	SERVER_MEM_ARGS_64HotSpot="-Xms768m -Xmx1536m"
	export SERVER_MEM_ARGS_64HotSpot
	SERVER_MEM_ARGS_64JRockit="-Xms768m -Xmx1536m"
	export SERVER_MEM_ARGS_64JRockit
	# Other java arguments
	SERVER_GENERIC_ARGS_PRODUCTION="-d64"
	export SERVER_GENERIC_ARGS_PRODUCTION
	SERVER_GENERIC_ARGS_DEVELOPMENT="-d64"
	export SERVER_GENERIC_ARGS_DEVELOPMENT
	# Other JVM arguments
fi

# Environmental Variables for STARTUP_GROUP UMS-DRIVER-EMAIL-MGD-SVR

if [ "${STARTUP_GROUP}" = "UMS-DRIVER-EMAIL-MGD-SVR" ] ; then
	COMMON_COMPONENTS_HOME="/SOA/u01/oracle/product/fmw/oracle_common"
	export COMMON_COMPONENTS_HOME
	ORACLE_DOMAIN_CONFIG_DIR="${DOMAIN_HOME}/config/fmwconfig"
	export ORACLE_DOMAIN_CONFIG_DIR
	EXTRA_JAVA_PROPERTIES="${EXTRA_JAVA_PROPERTIES} -Dem.oracle.home=/SOA/u01/oracle/product/fmw/em"
	export EXTRA_JAVA_PROPERTIES
	SOA_PRODUCT_HOME="/SOA/u01/oracle/product/fmw/soa"
	export SOA_PRODUCT_HOME
	CLASS_CACHE="true"
	export CLASS_CACHE
	ESS_ORACLE_HOME="/SOA/u01/oracle/product/fmw/oracle_common"
	export ESS_ORACLE_HOME
fi

# Startup parameters for STARTUP_GROUP UMS-DRIVER-EMAIL-MGD-SVR

if [ "${STARTUP_GROUP}" = "UMS-DRIVER-EMAIL-MGD-SVR" ] ; then
	# Java system properties.
	SERVER_SYSTEM_PROPERTIES="-Dopss.version=12.2.1.3 -Digf.arisidbeans.carmlloc=${ORACLE_DOMAIN_CONFIG_DIR}/carml -Digf.arisidstack.home=${ORACLE_DOMAIN_CONFIG_DIR}/arisidprovider -Doracle.security.jps.config=${DOMAIN_HOME}/config/fmwconfig/jps-config.xml -Doracle.deployed.app.dir=${DOMAIN_HOME}/servers/${SERVER_NAME}/tmp/_WL_user -Doracle.deployed.app.ext=/- -Dweblogic.alternateTypesDirectory=${COMMON_COMPONENTS_HOME}/modules/oracle.ossoiap,${COMMON_COMPONENTS_HOME}/modules/oracle.oamprovider,${COMMON_COMPONENTS_HOME}/modules/oracle.jps -Doracle.mds.filestore.preferred=${ORACLE_FORCE_MDS_FILESTORE} -Dadf.version=12.2.1.3.0 -Dweblogic.jdbc.remoteEnabled=true -Dcommon.components.home=${COMMON_COMPONENTS_HOME} -Djrf.version=12.2.2 -Dorg.apache.commons.logging.Log=org.apache.commons.logging.impl.Jdk14Logger -Ddomain.home=${DOMAIN_HOME} -Doracle.server.config.dir=${ORACLE_DOMAIN_CONFIG_DIR}/servers/${SERVER_NAME} -Doracle.domain.config.dir=${ORACLE_DOMAIN_CONFIG_DIR} -Doracle.ess.home=${ESS_ORACLE_HOME}"
	export SERVER_SYSTEM_PROPERTIES
	# Java protocol handlers.
	JAVA_OPTIONS="${JAVA_OPTIONS} -Djava.protocol.handler.pkgs=oracle.mds.net.protocol|oracle.fabric.common.classloaderurl.handler|oracle.fabric.common.uddiurl.handler|oracle.bpm.io.fs.protocol"
	export JAVA_OPTIONS
	# PRE_CLASSPATH.
	if [ "${PRE_CLASSPATH}" != "" ] ; then
		PRE_CLASSPATH="${PRE_CLASSPATH}${CLASSPATHSEP}${MW_HOME}/oracle_common/modules/com.oracle.webservices.wls.wls-jaxrpc.jar${CLASSPATHSEP}${COMMON_COMPONENTS_HOME}/modules/features/com.oracle.db.jdbc7-dms.jar"
		export PRE_CLASSPATH
	else
		PRE_CLASSPATH="${MW_HOME}/oracle_common/modules/com.oracle.webservices.wls.wls-jaxrpc.jar${CLASSPATHSEP}${COMMON_COMPONENTS_HOME}/modules/features/com.oracle.db.jdbc7-dms.jar"
		export PRE_CLASSPATH
	fi
	# POST_CLASSPATH.
	if [ "${POST_CLASSPATH}" != "" ] ; then
		POST_CLASSPATH="${POST_CLASSPATH}${CLASSPATHSEP}${COMMON_COMPONENTS_HOME}/modules/internal/features/jrf_wlsFmw_oracle.jrf.wls.classpath.jar${CLASSPATHSEP}${SOA_PRODUCT_HOME}/soa/modules/oracle.soa.fabric_11.1.1/tracking-api.jar${CLASSPATHSEP}${SOA_PRODUCT_HOME}/soa/modules/commons-cli-1.1.jar${CLASSPATHSEP}${SOA_PRODUCT_HOME}/soa/modules/oracle.soa.mgmt_11.1.1/soa-infra-mgmt.jar${CLASSPATHSEP}${ESS_ORACLE_HOME}/ess/archives/ess-sec.jar"
		export POST_CLASSPATH
	else
		POST_CLASSPATH="${COMMON_COMPONENTS_HOME}/modules/internal/features/jrf_wlsFmw_oracle.jrf.wls.classpath.jar${CLASSPATHSEP}${SOA_PRODUCT_HOME}/soa/modules/oracle.soa.fabric_11.1.1/tracking-api.jar${CLASSPATHSEP}${SOA_PRODUCT_HOME}/soa/modules/commons-cli-1.1.jar${CLASSPATHSEP}${SOA_PRODUCT_HOME}/soa/modules/oracle.soa.mgmt_11.1.1/soa-infra-mgmt.jar${CLASSPATHSEP}${ESS_ORACLE_HOME}/ess/archives/ess-sec.jar"
		export POST_CLASSPATH
	fi
	# 32 bit JVM memory settings
	SERVER_MEM_ARGS_32="-Xms768m -Xmx1536m"
	export SERVER_MEM_ARGS_32
	SERVER_MEM_ARGS_32HotSpot="-Xms768m -Xmx1536m"
	export SERVER_MEM_ARGS_32HotSpot
	SERVER_MEM_ARGS_32JRockit="-Xms768m -Xmx1536m"
	export SERVER_MEM_ARGS_32JRockit
	# 64 bit JVM memory settings
	SERVER_MEM_ARGS_64="-Xms768m -Xmx1536m"
	export SERVER_MEM_ARGS_64
	SERVER_MEM_ARGS_64HotSpot="-Xms768m -Xmx1536m"
	export SERVER_MEM_ARGS_64HotSpot
	SERVER_MEM_ARGS_64JRockit="-Xms768m -Xmx1536m"
	export SERVER_MEM_ARGS_64JRockit
	# Other java arguments
	SERVER_GENERIC_ARGS_PRODUCTION="-d64"
	export SERVER_GENERIC_ARGS_PRODUCTION
	SERVER_GENERIC_ARGS_DEVELOPMENT="-d64"
	export SERVER_GENERIC_ARGS_DEVELOPMENT
	# Other JVM arguments
fi

# Environmental Variables for STARTUP_GROUP UMS-DRIVER-GCM-MGD-SVR

if [ "${STARTUP_GROUP}" = "UMS-DRIVER-GCM-MGD-SVR" ] ; then
	COMMON_COMPONENTS_HOME="/SOA/u01/oracle/product/fmw/oracle_common"
	export COMMON_COMPONENTS_HOME
	ORACLE_DOMAIN_CONFIG_DIR="${DOMAIN_HOME}/config/fmwconfig"
	export ORACLE_DOMAIN_CONFIG_DIR
	EXTRA_JAVA_PROPERTIES="${EXTRA_JAVA_PROPERTIES} -Dem.oracle.home=/SOA/u01/oracle/product/fmw/em"
	export EXTRA_JAVA_PROPERTIES
	SOA_PRODUCT_HOME="/SOA/u01/oracle/product/fmw/soa"
	export SOA_PRODUCT_HOME
	CLASS_CACHE="true"
	export CLASS_CACHE
	ESS_ORACLE_HOME="/SOA/u01/oracle/product/fmw/oracle_common"
	export ESS_ORACLE_HOME
fi

# Startup parameters for STARTUP_GROUP UMS-DRIVER-GCM-MGD-SVR

if [ "${STARTUP_GROUP}" = "UMS-DRIVER-GCM-MGD-SVR" ] ; then
	# Java system properties.
	SERVER_SYSTEM_PROPERTIES="-Dopss.version=12.2.1.3 -Digf.arisidbeans.carmlloc=${ORACLE_DOMAIN_CONFIG_DIR}/carml -Digf.arisidstack.home=${ORACLE_DOMAIN_CONFIG_DIR}/arisidprovider -Doracle.security.jps.config=${DOMAIN_HOME}/config/fmwconfig/jps-config.xml -Doracle.deployed.app.dir=${DOMAIN_HOME}/servers/${SERVER_NAME}/tmp/_WL_user -Doracle.deployed.app.ext=/- -Dweblogic.alternateTypesDirectory=${COMMON_COMPONENTS_HOME}/modules/oracle.ossoiap,${COMMON_COMPONENTS_HOME}/modules/oracle.oamprovider,${COMMON_COMPONENTS_HOME}/modules/oracle.jps -Doracle.mds.filestore.preferred=${ORACLE_FORCE_MDS_FILESTORE} -Dadf.version=12.2.1.3.0 -Dweblogic.jdbc.remoteEnabled=true -Dcommon.components.home=${COMMON_COMPONENTS_HOME} -Djrf.version=12.2.2 -Dorg.apache.commons.logging.Log=org.apache.commons.logging.impl.Jdk14Logger -Ddomain.home=${DOMAIN_HOME} -Doracle.server.config.dir=${ORACLE_DOMAIN_CONFIG_DIR}/servers/${SERVER_NAME} -Doracle.domain.config.dir=${ORACLE_DOMAIN_CONFIG_DIR} -Doracle.ess.home=${ESS_ORACLE_HOME}"
	export SERVER_SYSTEM_PROPERTIES
	# Java protocol handlers.
	JAVA_OPTIONS="${JAVA_OPTIONS} -Djava.protocol.handler.pkgs=oracle.mds.net.protocol|oracle.fabric.common.classloaderurl.handler|oracle.fabric.common.uddiurl.handler|oracle.bpm.io.fs.protocol"
	export JAVA_OPTIONS
	# PRE_CLASSPATH.
	if [ "${PRE_CLASSPATH}" != "" ] ; then
		PRE_CLASSPATH="${PRE_CLASSPATH}${CLASSPATHSEP}${MW_HOME}/oracle_common/modules/com.oracle.webservices.wls.wls-jaxrpc.jar${CLASSPATHSEP}${COMMON_COMPONENTS_HOME}/modules/features/com.oracle.db.jdbc7-dms.jar"
		export PRE_CLASSPATH
	else
		PRE_CLASSPATH="${MW_HOME}/oracle_common/modules/com.oracle.webservices.wls.wls-jaxrpc.jar${CLASSPATHSEP}${COMMON_COMPONENTS_HOME}/modules/features/com.oracle.db.jdbc7-dms.jar"
		export PRE_CLASSPATH
	fi
	# POST_CLASSPATH.
	if [ "${POST_CLASSPATH}" != "" ] ; then
		POST_CLASSPATH="${POST_CLASSPATH}${CLASSPATHSEP}${COMMON_COMPONENTS_HOME}/modules/internal/features/jrf_wlsFmw_oracle.jrf.wls.classpath.jar${CLASSPATHSEP}${SOA_PRODUCT_HOME}/soa/modules/oracle.soa.fabric_11.1.1/tracking-api.jar${CLASSPATHSEP}${SOA_PRODUCT_HOME}/soa/modules/commons-cli-1.1.jar${CLASSPATHSEP}${SOA_PRODUCT_HOME}/soa/modules/oracle.soa.mgmt_11.1.1/soa-infra-mgmt.jar${CLASSPATHSEP}${ESS_ORACLE_HOME}/ess/archives/ess-sec.jar"
		export POST_CLASSPATH
	else
		POST_CLASSPATH="${COMMON_COMPONENTS_HOME}/modules/internal/features/jrf_wlsFmw_oracle.jrf.wls.classpath.jar${CLASSPATHSEP}${SOA_PRODUCT_HOME}/soa/modules/oracle.soa.fabric_11.1.1/tracking-api.jar${CLASSPATHSEP}${SOA_PRODUCT_HOME}/soa/modules/commons-cli-1.1.jar${CLASSPATHSEP}${SOA_PRODUCT_HOME}/soa/modules/oracle.soa.mgmt_11.1.1/soa-infra-mgmt.jar${CLASSPATHSEP}${ESS_ORACLE_HOME}/ess/archives/ess-sec.jar"
		export POST_CLASSPATH
	fi
	# 32 bit JVM memory settings
	SERVER_MEM_ARGS_32="-Xms768m -Xmx1536m"
	export SERVER_MEM_ARGS_32
	SERVER_MEM_ARGS_32HotSpot="-Xms768m -Xmx1536m"
	export SERVER_MEM_ARGS_32HotSpot
	SERVER_MEM_ARGS_32JRockit="-Xms768m -Xmx1536m"
	export SERVER_MEM_ARGS_32JRockit
	# 64 bit JVM memory settings
	SERVER_MEM_ARGS_64="-Xms768m -Xmx1536m"
	export SERVER_MEM_ARGS_64
	SERVER_MEM_ARGS_64HotSpot="-Xms768m -Xmx1536m"
	export SERVER_MEM_ARGS_64HotSpot
	SERVER_MEM_ARGS_64JRockit="-Xms768m -Xmx1536m"
	export SERVER_MEM_ARGS_64JRockit
	# Other java arguments
	SERVER_GENERIC_ARGS_PRODUCTION="-d64"
	export SERVER_GENERIC_ARGS_PRODUCTION
	SERVER_GENERIC_ARGS_DEVELOPMENT="-d64"
	export SERVER_GENERIC_ARGS_DEVELOPMENT
	# Other JVM arguments
fi

# Environmental Variables for STARTUP_GROUP JRF-WS-CORE-MAN-SVR

if [ "${STARTUP_GROUP}" = "JRF-WS-CORE-MAN-SVR" ] ; then
	COMMON_COMPONENTS_HOME="/SOA/u01/oracle/product/fmw/oracle_common"
	export COMMON_COMPONENTS_HOME
	ORACLE_DOMAIN_CONFIG_DIR="${DOMAIN_HOME}/config/fmwconfig"
	export ORACLE_DOMAIN_CONFIG_DIR
	EXTRA_JAVA_PROPERTIES="${EXTRA_JAVA_PROPERTIES} -Dem.oracle.home=/SOA/u01/oracle/product/fmw/em"
	export EXTRA_JAVA_PROPERTIES
	SOA_PRODUCT_HOME="/SOA/u01/oracle/product/fmw/soa"
	export SOA_PRODUCT_HOME
	CLASS_CACHE="true"
	export CLASS_CACHE
	ESS_ORACLE_HOME="/SOA/u01/oracle/product/fmw/oracle_common"
	export ESS_ORACLE_HOME
fi

# Startup parameters for STARTUP_GROUP JRF-WS-CORE-MAN-SVR

if [ "${STARTUP_GROUP}" = "JRF-WS-CORE-MAN-SVR" ] ; then
	# Java system properties.
	SERVER_SYSTEM_PROPERTIES="-Dopss.version=12.2.1.3 -Digf.arisidbeans.carmlloc=${ORACLE_DOMAIN_CONFIG_DIR}/carml -Digf.arisidstack.home=${ORACLE_DOMAIN_CONFIG_DIR}/arisidprovider -Doracle.security.jps.config=${DOMAIN_HOME}/config/fmwconfig/jps-config.xml -Doracle.deployed.app.dir=${DOMAIN_HOME}/servers/${SERVER_NAME}/tmp/_WL_user -Doracle.deployed.app.ext=/- -Dweblogic.alternateTypesDirectory=${COMMON_COMPONENTS_HOME}/modules/oracle.ossoiap,${COMMON_COMPONENTS_HOME}/modules/oracle.oamprovider,${COMMON_COMPONENTS_HOME}/modules/oracle.jps -Doracle.mds.filestore.preferred=${ORACLE_FORCE_MDS_FILESTORE} -Dadf.version=12.2.1.3.0 -Dweblogic.jdbc.remoteEnabled=true -Dcommon.components.home=${COMMON_COMPONENTS_HOME} -Djrf.version=12.2.2 -Dorg.apache.commons.logging.Log=org.apache.commons.logging.impl.Jdk14Logger -Ddomain.home=${DOMAIN_HOME} -Doracle.server.config.dir=${ORACLE_DOMAIN_CONFIG_DIR}/servers/${SERVER_NAME} -Doracle.domain.config.dir=${ORACLE_DOMAIN_CONFIG_DIR} -Doracle.ess.home=${ESS_ORACLE_HOME}"
	export SERVER_SYSTEM_PROPERTIES
	# Java protocol handlers.
	JAVA_OPTIONS="${JAVA_OPTIONS} -Djava.protocol.handler.pkgs=oracle.mds.net.protocol|oracle.fabric.common.classloaderurl.handler|oracle.fabric.common.uddiurl.handler|oracle.bpm.io.fs.protocol"
	export JAVA_OPTIONS
	# PRE_CLASSPATH.
	if [ "${PRE_CLASSPATH}" != "" ] ; then
		PRE_CLASSPATH="${PRE_CLASSPATH}${CLASSPATHSEP}${MW_HOME}/oracle_common/modules/com.oracle.webservices.wls.wls-jaxrpc.jar${CLASSPATHSEP}${COMMON_COMPONENTS_HOME}/modules/features/com.oracle.db.jdbc7-dms.jar"
		export PRE_CLASSPATH
	else
		PRE_CLASSPATH="${MW_HOME}/oracle_common/modules/com.oracle.webservices.wls.wls-jaxrpc.jar${CLASSPATHSEP}${COMMON_COMPONENTS_HOME}/modules/features/com.oracle.db.jdbc7-dms.jar"
		export PRE_CLASSPATH
	fi
	# POST_CLASSPATH.
	if [ "${POST_CLASSPATH}" != "" ] ; then
		POST_CLASSPATH="${POST_CLASSPATH}${CLASSPATHSEP}${COMMON_COMPONENTS_HOME}/modules/internal/features/jrf_wlsFmw_oracle.jrf.wls.classpath.jar${CLASSPATHSEP}${SOA_PRODUCT_HOME}/soa/modules/oracle.soa.fabric_11.1.1/tracking-api.jar${CLASSPATHSEP}${SOA_PRODUCT_HOME}/soa/modules/commons-cli-1.1.jar${CLASSPATHSEP}${SOA_PRODUCT_HOME}/soa/modules/oracle.soa.mgmt_11.1.1/soa-infra-mgmt.jar${CLASSPATHSEP}${ESS_ORACLE_HOME}/ess/archives/ess-sec.jar"
		export POST_CLASSPATH
	else
		POST_CLASSPATH="${COMMON_COMPONENTS_HOME}/modules/internal/features/jrf_wlsFmw_oracle.jrf.wls.classpath.jar${CLASSPATHSEP}${SOA_PRODUCT_HOME}/soa/modules/oracle.soa.fabric_11.1.1/tracking-api.jar${CLASSPATHSEP}${SOA_PRODUCT_HOME}/soa/modules/commons-cli-1.1.jar${CLASSPATHSEP}${SOA_PRODUCT_HOME}/soa/modules/oracle.soa.mgmt_11.1.1/soa-infra-mgmt.jar${CLASSPATHSEP}${ESS_ORACLE_HOME}/ess/archives/ess-sec.jar"
		export POST_CLASSPATH
	fi
	# 32 bit JVM memory settings
	SERVER_MEM_ARGS_32="-Xms768m -Xmx1536m"
	export SERVER_MEM_ARGS_32
	SERVER_MEM_ARGS_32HotSpot="-Xms768m -Xmx1536m"
	export SERVER_MEM_ARGS_32HotSpot
	SERVER_MEM_ARGS_32JRockit="-Xms768m -Xmx1536m"
	export SERVER_MEM_ARGS_32JRockit
	# 64 bit JVM memory settings
	SERVER_MEM_ARGS_64="-Xms768m -Xmx1536m"
	export SERVER_MEM_ARGS_64
	SERVER_MEM_ARGS_64HotSpot="-Xms768m -Xmx1536m"
	export SERVER_MEM_ARGS_64HotSpot
	SERVER_MEM_ARGS_64JRockit="-Xms768m -Xmx1536m"
	export SERVER_MEM_ARGS_64JRockit
	# Other java arguments
	SERVER_GENERIC_ARGS_PRODUCTION="-d64"
	export SERVER_GENERIC_ARGS_PRODUCTION
	SERVER_GENERIC_ARGS_DEVELOPMENT="-d64"
	export SERVER_GENERIC_ARGS_DEVELOPMENT
	# Other JVM arguments
fi

# Environmental Variables for STARTUP_GROUP SOA-DYN-CLUSTER

if [ "${STARTUP_GROUP}" = "SOA-DYN-CLUSTER" ] ; then
	COMMON_COMPONENTS_HOME="/SOA/u01/oracle/product/fmw/oracle_common"
	export COMMON_COMPONENTS_HOME
	ORACLE_DOMAIN_CONFIG_DIR="${DOMAIN_HOME}/config/fmwconfig"
	export ORACLE_DOMAIN_CONFIG_DIR
	EXTRA_JAVA_PROPERTIES="${EXTRA_JAVA_PROPERTIES} -Dem.oracle.home=/SOA/u01/oracle/product/fmw/em"
	export EXTRA_JAVA_PROPERTIES
	SOA_PRODUCT_HOME="/SOA/u01/oracle/product/fmw/soa"
	export SOA_PRODUCT_HOME
	CLASS_CACHE="true"
	export CLASS_CACHE
	ESS_ORACLE_HOME="/SOA/u01/oracle/product/fmw/oracle_common"
	export ESS_ORACLE_HOME
fi

# Startup parameters for STARTUP_GROUP SOA-DYN-CLUSTER

if [ "${STARTUP_GROUP}" = "SOA-DYN-CLUSTER" ] ; then
	# Java system properties.
	SERVER_SYSTEM_PROPERTIES="-Dopss.version=12.2.1.3 -Digf.arisidbeans.carmlloc=${ORACLE_DOMAIN_CONFIG_DIR}/carml -Digf.arisidstack.home=${ORACLE_DOMAIN_CONFIG_DIR}/arisidprovider -Doracle.security.jps.config=${DOMAIN_HOME}/config/fmwconfig/jps-config.xml -Doracle.deployed.app.dir=${DOMAIN_HOME}/servers/${SERVER_NAME}/tmp/_WL_user -Doracle.deployed.app.ext=/- -Dweblogic.alternateTypesDirectory=${COMMON_COMPONENTS_HOME}/modules/oracle.ossoiap,${COMMON_COMPONENTS_HOME}/modules/oracle.oamprovider,${COMMON_COMPONENTS_HOME}/modules/oracle.jps -Doracle.mds.filestore.preferred=${ORACLE_FORCE_MDS_FILESTORE} -Dadf.version=12.2.1.3.0 -Dweblogic.jdbc.remoteEnabled=true -Dcommon.components.home=${COMMON_COMPONENTS_HOME} -Djrf.version=12.2.2 -Dorg.apache.commons.logging.Log=org.apache.commons.logging.impl.Jdk14Logger -Ddomain.home=${DOMAIN_HOME} -Doracle.server.config.dir=${ORACLE_DOMAIN_CONFIG_DIR}/servers/${SERVER_NAME} -Doracle.domain.config.dir=${ORACLE_DOMAIN_CONFIG_DIR} -Doracle.ess.home=${ESS_ORACLE_HOME}"
	export SERVER_SYSTEM_PROPERTIES
	# Java protocol handlers.
	JAVA_OPTIONS="${JAVA_OPTIONS} -Djava.protocol.handler.pkgs=oracle.mds.net.protocol|oracle.fabric.common.classloaderurl.handler|oracle.fabric.common.uddiurl.handler|oracle.bpm.io.fs.protocol"
	export JAVA_OPTIONS
	# PRE_CLASSPATH.
	if [ "${PRE_CLASSPATH}" != "" ] ; then
		PRE_CLASSPATH="${PRE_CLASSPATH}${CLASSPATHSEP}${MW_HOME}/oracle_common/modules/com.oracle.webservices.wls.wls-jaxrpc.jar${CLASSPATHSEP}${COMMON_COMPONENTS_HOME}/modules/features/com.oracle.db.jdbc7-dms.jar"
		export PRE_CLASSPATH
	else
		PRE_CLASSPATH="${MW_HOME}/oracle_common/modules/com.oracle.webservices.wls.wls-jaxrpc.jar${CLASSPATHSEP}${COMMON_COMPONENTS_HOME}/modules/features/com.oracle.db.jdbc7-dms.jar"
		export PRE_CLASSPATH
	fi
	# POST_CLASSPATH.
	if [ "${POST_CLASSPATH}" != "" ] ; then
		POST_CLASSPATH="${POST_CLASSPATH}${CLASSPATHSEP}${COMMON_COMPONENTS_HOME}/modules/internal/features/jrf_wlsFmw_oracle.jrf.wls.classpath.jar${CLASSPATHSEP}${SOA_PRODUCT_HOME}/soa/modules/oracle.soa.fabric_11.1.1/tracking-api.jar${CLASSPATHSEP}${SOA_PRODUCT_HOME}/soa/modules/commons-cli-1.1.jar${CLASSPATHSEP}${SOA_PRODUCT_HOME}/soa/modules/oracle.soa.mgmt_11.1.1/soa-infra-mgmt.jar${CLASSPATHSEP}${ESS_ORACLE_HOME}/ess/archives/ess-sec.jar"
		export POST_CLASSPATH
	else
		POST_CLASSPATH="${COMMON_COMPONENTS_HOME}/modules/internal/features/jrf_wlsFmw_oracle.jrf.wls.classpath.jar${CLASSPATHSEP}${SOA_PRODUCT_HOME}/soa/modules/oracle.soa.fabric_11.1.1/tracking-api.jar${CLASSPATHSEP}${SOA_PRODUCT_HOME}/soa/modules/commons-cli-1.1.jar${CLASSPATHSEP}${SOA_PRODUCT_HOME}/soa/modules/oracle.soa.mgmt_11.1.1/soa-infra-mgmt.jar${CLASSPATHSEP}${ESS_ORACLE_HOME}/ess/archives/ess-sec.jar"
		export POST_CLASSPATH
	fi
	# 32 bit JVM memory settings
	SERVER_MEM_ARGS_32="-Xms768m -Xmx1536m"
	export SERVER_MEM_ARGS_32
	SERVER_MEM_ARGS_32HotSpot="-Xms768m -Xmx1536m"
	export SERVER_MEM_ARGS_32HotSpot
	SERVER_MEM_ARGS_32JRockit="-Xms768m -Xmx1536m"
	export SERVER_MEM_ARGS_32JRockit
	# 64 bit JVM memory settings
	SERVER_MEM_ARGS_64="-Xms768m -Xmx1536m"
	export SERVER_MEM_ARGS_64
	SERVER_MEM_ARGS_64HotSpot="-Xms768m -Xmx1536m"
	export SERVER_MEM_ARGS_64HotSpot
	SERVER_MEM_ARGS_64JRockit="-Xms768m -Xmx1536m"
	export SERVER_MEM_ARGS_64JRockit
	# Other java arguments
	SERVER_GENERIC_ARGS_PRODUCTION="-d64"
	export SERVER_GENERIC_ARGS_PRODUCTION
	SERVER_GENERIC_ARGS_DEVELOPMENT="-d64"
	export SERVER_GENERIC_ARGS_DEVELOPMENT
	# Other JVM arguments
fi

# Environmental Variables for STARTUP_GROUP WSM-CACHE-DYN-CLUSTER

if [ "${STARTUP_GROUP}" = "WSM-CACHE-DYN-CLUSTER" ] ; then
	COMMON_COMPONENTS_HOME="/SOA/u01/oracle/product/fmw/oracle_common"
	export COMMON_COMPONENTS_HOME
	ORACLE_DOMAIN_CONFIG_DIR="${DOMAIN_HOME}/config/fmwconfig"
	export ORACLE_DOMAIN_CONFIG_DIR
	EXTRA_JAVA_PROPERTIES="${EXTRA_JAVA_PROPERTIES} -Dem.oracle.home=/SOA/u01/oracle/product/fmw/em"
	export EXTRA_JAVA_PROPERTIES
	SOA_PRODUCT_HOME="/SOA/u01/oracle/product/fmw/soa"
	export SOA_PRODUCT_HOME
	CLASS_CACHE="true"
	export CLASS_CACHE
	ESS_ORACLE_HOME="/SOA/u01/oracle/product/fmw/oracle_common"
	export ESS_ORACLE_HOME
fi

# Startup parameters for STARTUP_GROUP WSM-CACHE-DYN-CLUSTER

if [ "${STARTUP_GROUP}" = "WSM-CACHE-DYN-CLUSTER" ] ; then
	# Java system properties.
	SERVER_SYSTEM_PROPERTIES="-Dopss.version=12.2.1.3 -Digf.arisidbeans.carmlloc=${ORACLE_DOMAIN_CONFIG_DIR}/carml -Digf.arisidstack.home=${ORACLE_DOMAIN_CONFIG_DIR}/arisidprovider -Doracle.security.jps.config=${DOMAIN_HOME}/config/fmwconfig/jps-config.xml -Doracle.deployed.app.dir=${DOMAIN_HOME}/servers/${SERVER_NAME}/tmp/_WL_user -Doracle.deployed.app.ext=/- -Dweblogic.alternateTypesDirectory=${COMMON_COMPONENTS_HOME}/modules/oracle.ossoiap,${COMMON_COMPONENTS_HOME}/modules/oracle.oamprovider,${COMMON_COMPONENTS_HOME}/modules/oracle.jps -Doracle.mds.filestore.preferred=${ORACLE_FORCE_MDS_FILESTORE} -Dadf.version=12.2.1.3.0 -Dweblogic.jdbc.remoteEnabled=true -Dcommon.components.home=${COMMON_COMPONENTS_HOME} -Djrf.version=12.2.2 -Dorg.apache.commons.logging.Log=org.apache.commons.logging.impl.Jdk14Logger -Ddomain.home=${DOMAIN_HOME} -Doracle.server.config.dir=${ORACLE_DOMAIN_CONFIG_DIR}/servers/${SERVER_NAME} -Doracle.domain.config.dir=${ORACLE_DOMAIN_CONFIG_DIR} -Doracle.ess.home=${ESS_ORACLE_HOME}"
	export SERVER_SYSTEM_PROPERTIES
	# Java protocol handlers.
	JAVA_OPTIONS="${JAVA_OPTIONS} -Djava.protocol.handler.pkgs=oracle.mds.net.protocol|oracle.fabric.common.classloaderurl.handler|oracle.fabric.common.uddiurl.handler|oracle.bpm.io.fs.protocol"
	export JAVA_OPTIONS
	# PRE_CLASSPATH.
	if [ "${PRE_CLASSPATH}" != "" ] ; then
		PRE_CLASSPATH="${PRE_CLASSPATH}${CLASSPATHSEP}${MW_HOME}/oracle_common/modules/com.oracle.webservices.wls.wls-jaxrpc.jar${CLASSPATHSEP}${COMMON_COMPONENTS_HOME}/modules/features/com.oracle.db.jdbc7-dms.jar"
		export PRE_CLASSPATH
	else
		PRE_CLASSPATH="${MW_HOME}/oracle_common/modules/com.oracle.webservices.wls.wls-jaxrpc.jar${CLASSPATHSEP}${COMMON_COMPONENTS_HOME}/modules/features/com.oracle.db.jdbc7-dms.jar"
		export PRE_CLASSPATH
	fi
	# POST_CLASSPATH.
	if [ "${POST_CLASSPATH}" != "" ] ; then
		POST_CLASSPATH="${POST_CLASSPATH}${CLASSPATHSEP}${COMMON_COMPONENTS_HOME}/modules/internal/features/jrf_wlsFmw_oracle.jrf.wls.classpath.jar${CLASSPATHSEP}${SOA_PRODUCT_HOME}/soa/modules/oracle.soa.fabric_11.1.1/tracking-api.jar${CLASSPATHSEP}${SOA_PRODUCT_HOME}/soa/modules/commons-cli-1.1.jar${CLASSPATHSEP}${SOA_PRODUCT_HOME}/soa/modules/oracle.soa.mgmt_11.1.1/soa-infra-mgmt.jar${CLASSPATHSEP}${ESS_ORACLE_HOME}/ess/archives/ess-sec.jar"
		export POST_CLASSPATH
	else
		POST_CLASSPATH="${COMMON_COMPONENTS_HOME}/modules/internal/features/jrf_wlsFmw_oracle.jrf.wls.classpath.jar${CLASSPATHSEP}${SOA_PRODUCT_HOME}/soa/modules/oracle.soa.fabric_11.1.1/tracking-api.jar${CLASSPATHSEP}${SOA_PRODUCT_HOME}/soa/modules/commons-cli-1.1.jar${CLASSPATHSEP}${SOA_PRODUCT_HOME}/soa/modules/oracle.soa.mgmt_11.1.1/soa-infra-mgmt.jar${CLASSPATHSEP}${ESS_ORACLE_HOME}/ess/archives/ess-sec.jar"
		export POST_CLASSPATH
	fi
	# 32 bit JVM memory settings
	SERVER_MEM_ARGS_32="-Xms768m -Xmx1536m"
	export SERVER_MEM_ARGS_32
	SERVER_MEM_ARGS_32HotSpot="-Xms768m -Xmx1536m"
	export SERVER_MEM_ARGS_32HotSpot
	SERVER_MEM_ARGS_32JRockit="-Xms768m -Xmx1536m"
	export SERVER_MEM_ARGS_32JRockit
	# 64 bit JVM memory settings
	SERVER_MEM_ARGS_64="-Xms768m -Xmx1536m"
	export SERVER_MEM_ARGS_64
	SERVER_MEM_ARGS_64HotSpot="-Xms768m -Xmx1536m"
	export SERVER_MEM_ARGS_64HotSpot
	SERVER_MEM_ARGS_64JRockit="-Xms768m -Xmx1536m"
	export SERVER_MEM_ARGS_64JRockit
	# Other java arguments
	SERVER_GENERIC_ARGS_PRODUCTION="-d64"
	export SERVER_GENERIC_ARGS_PRODUCTION
	SERVER_GENERIC_ARGS_DEVELOPMENT="-d64"
	export SERVER_GENERIC_ARGS_DEVELOPMENT
	# Other JVM arguments
fi

# Environmental Variables for STARTUP_GROUP WSMPM-DYN-CLUSTER

if [ "${STARTUP_GROUP}" = "WSMPM-DYN-CLUSTER" ] ; then
	COMMON_COMPONENTS_HOME="/SOA/u01/oracle/product/fmw/oracle_common"
	export COMMON_COMPONENTS_HOME
	ORACLE_DOMAIN_CONFIG_DIR="${DOMAIN_HOME}/config/fmwconfig"
	export ORACLE_DOMAIN_CONFIG_DIR
	EXTRA_JAVA_PROPERTIES="${EXTRA_JAVA_PROPERTIES} -Dem.oracle.home=/SOA/u01/oracle/product/fmw/em"
	export EXTRA_JAVA_PROPERTIES
	SOA_PRODUCT_HOME="/SOA/u01/oracle/product/fmw/soa"
	export SOA_PRODUCT_HOME
	CLASS_CACHE="true"
	export CLASS_CACHE
	ESS_ORACLE_HOME="/SOA/u01/oracle/product/fmw/oracle_common"
	export ESS_ORACLE_HOME
fi

# Startup parameters for STARTUP_GROUP WSMPM-DYN-CLUSTER

if [ "${STARTUP_GROUP}" = "WSMPM-DYN-CLUSTER" ] ; then
	# Java system properties.
	SERVER_SYSTEM_PROPERTIES="-Dopss.version=12.2.1.3 -Digf.arisidbeans.carmlloc=${ORACLE_DOMAIN_CONFIG_DIR}/carml -Digf.arisidstack.home=${ORACLE_DOMAIN_CONFIG_DIR}/arisidprovider -Doracle.security.jps.config=${DOMAIN_HOME}/config/fmwconfig/jps-config.xml -Doracle.deployed.app.dir=${DOMAIN_HOME}/servers/${SERVER_NAME}/tmp/_WL_user -Doracle.deployed.app.ext=/- -Dweblogic.alternateTypesDirectory=${COMMON_COMPONENTS_HOME}/modules/oracle.ossoiap,${COMMON_COMPONENTS_HOME}/modules/oracle.oamprovider,${COMMON_COMPONENTS_HOME}/modules/oracle.jps -Doracle.mds.filestore.preferred=${ORACLE_FORCE_MDS_FILESTORE} -Dadf.version=12.2.1.3.0 -Dweblogic.jdbc.remoteEnabled=true -Dcommon.components.home=${COMMON_COMPONENTS_HOME} -Djrf.version=12.2.2 -Dorg.apache.commons.logging.Log=org.apache.commons.logging.impl.Jdk14Logger -Ddomain.home=${DOMAIN_HOME} -Doracle.server.config.dir=${ORACLE_DOMAIN_CONFIG_DIR}/servers/${SERVER_NAME} -Doracle.domain.config.dir=${ORACLE_DOMAIN_CONFIG_DIR} -Doracle.ess.home=${ESS_ORACLE_HOME}"
	export SERVER_SYSTEM_PROPERTIES
	# Java protocol handlers.
	JAVA_OPTIONS="${JAVA_OPTIONS} -Djava.protocol.handler.pkgs=oracle.mds.net.protocol|oracle.fabric.common.classloaderurl.handler|oracle.fabric.common.uddiurl.handler|oracle.bpm.io.fs.protocol"
	export JAVA_OPTIONS
	# PRE_CLASSPATH.
	if [ "${PRE_CLASSPATH}" != "" ] ; then
		PRE_CLASSPATH="${PRE_CLASSPATH}${CLASSPATHSEP}${MW_HOME}/oracle_common/modules/com.oracle.webservices.wls.wls-jaxrpc.jar${CLASSPATHSEP}${COMMON_COMPONENTS_HOME}/modules/features/com.oracle.db.jdbc7-dms.jar"
		export PRE_CLASSPATH
	else
		PRE_CLASSPATH="${MW_HOME}/oracle_common/modules/com.oracle.webservices.wls.wls-jaxrpc.jar${CLASSPATHSEP}${COMMON_COMPONENTS_HOME}/modules/features/com.oracle.db.jdbc7-dms.jar"
		export PRE_CLASSPATH
	fi
	# POST_CLASSPATH.
	if [ "${POST_CLASSPATH}" != "" ] ; then
		POST_CLASSPATH="${POST_CLASSPATH}${CLASSPATHSEP}${COMMON_COMPONENTS_HOME}/modules/internal/features/jrf_wlsFmw_oracle.jrf.wls.classpath.jar${CLASSPATHSEP}${SOA_PRODUCT_HOME}/soa/modules/oracle.soa.fabric_11.1.1/tracking-api.jar${CLASSPATHSEP}${SOA_PRODUCT_HOME}/soa/modules/commons-cli-1.1.jar${CLASSPATHSEP}${SOA_PRODUCT_HOME}/soa/modules/oracle.soa.mgmt_11.1.1/soa-infra-mgmt.jar${CLASSPATHSEP}${ESS_ORACLE_HOME}/ess/archives/ess-sec.jar"
		export POST_CLASSPATH
	else
		POST_CLASSPATH="${COMMON_COMPONENTS_HOME}/modules/internal/features/jrf_wlsFmw_oracle.jrf.wls.classpath.jar${CLASSPATHSEP}${SOA_PRODUCT_HOME}/soa/modules/oracle.soa.fabric_11.1.1/tracking-api.jar${CLASSPATHSEP}${SOA_PRODUCT_HOME}/soa/modules/commons-cli-1.1.jar${CLASSPATHSEP}${SOA_PRODUCT_HOME}/soa/modules/oracle.soa.mgmt_11.1.1/soa-infra-mgmt.jar${CLASSPATHSEP}${ESS_ORACLE_HOME}/ess/archives/ess-sec.jar"
		export POST_CLASSPATH
	fi
	# 32 bit JVM memory settings
	SERVER_MEM_ARGS_32="-Xms768m -Xmx1536m"
	export SERVER_MEM_ARGS_32
	SERVER_MEM_ARGS_32HotSpot="-Xms768m -Xmx1536m"
	export SERVER_MEM_ARGS_32HotSpot
	SERVER_MEM_ARGS_32JRockit="-Xms768m -Xmx1536m"
	export SERVER_MEM_ARGS_32JRockit
	# 64 bit JVM memory settings
	SERVER_MEM_ARGS_64="-Xms768m -Xmx1536m"
	export SERVER_MEM_ARGS_64
	SERVER_MEM_ARGS_64HotSpot="-Xms768m -Xmx1536m"
	export SERVER_MEM_ARGS_64HotSpot
	SERVER_MEM_ARGS_64JRockit="-Xms768m -Xmx1536m"
	export SERVER_MEM_ARGS_64JRockit
	# Other java arguments
	SERVER_GENERIC_ARGS_PRODUCTION="-d64"
	export SERVER_GENERIC_ARGS_PRODUCTION
	SERVER_GENERIC_ARGS_DEVELOPMENT="-d64"
	export SERVER_GENERIC_ARGS_DEVELOPMENT
	# Other JVM arguments
fi

if [ "${SERVER_SYSTEM_PROPERTIES}" != "" ] ; then
	JAVA_OPTIONS="${JAVA_OPTIONS} ${SERVER_SYSTEM_PROPERTIES}"
	export JAVA_OPTIONS
fi

if [ "${VM_TYPE}" = "HotSpot" ] ; then
	if [ "${JAVA_USE_64BIT}" != "true" ] ; then
		if [ "${SERVER_MEM_ARGS_32HotSpot}" != "" ] ; then
			MEM_ARGS="${SERVER_MEM_ARGS_32HotSpot}"
			export MEM_ARGS
		fi
	else
		if [ "${SERVER_MEM_ARGS_64HotSpot}" != "" ] ; then
			MEM_ARGS="${SERVER_MEM_ARGS_64HotSpot}"
			export MEM_ARGS
		fi
	fi
else
	if [ "${VM_TYPE}" = "JRockit" ] ; then
		if [ "${JAVA_USE_64BIT}" != "true" ] ; then
			if [ "${SERVER_MEM_ARGS_32JRockit}" != "" ] ; then
				MEM_ARGS="${SERVER_MEM_ARGS_32JRockit}"
				export MEM_ARGS
			fi
		else
			if [ "${SERVER_MEM_ARGS_64JRockit}" != "" ] ; then
				MEM_ARGS="${SERVER_MEM_ARGS_64JRockit}"
				export MEM_ARGS
			fi
		fi
	else
		if [ "${JAVA_USE_64BIT}" != "true" ] ; then
			if [ "${SERVER_MEM_ARGS_32}" != "" ] ; then
				MEM_ARGS="${SERVER_MEM_ARGS_32}"
				export MEM_ARGS
			fi
		else
			if [ "${SERVER_MEM_ARGS_64}" != "" ] ; then
				MEM_ARGS="${SERVER_MEM_ARGS_64}"
				export MEM_ARGS
			fi
		fi
	fi
fi

if [ "${PRODUCTION_MODE}" = "true" ] ; then
	if [ "${SERVER_GENERIC_ARGS_PRODUCTION}" != "" ] ; then
		JAVA_OPTIONS="${JAVA_OPTIONS} ${SERVER_GENERIC_ARGS_PRODUCTION}"
		export JAVA_OPTIONS
	fi
else
	if [ "${SERVER_GENERIC_ARGS_DEVELOPMENT}" != "" ] ; then
		JAVA_OPTIONS="${JAVA_OPTIONS} ${SERVER_GENERIC_ARGS_DEVELOPMENT}"
		export JAVA_OPTIONS
	fi
fi

