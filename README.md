# soasuite-12.2-installation
Scripts to install Oracle SOA Suite on Solaris / Linux without GUI.

## Procedure to follow

### Prepare System ###

Run with user: *root*

Modify hosts to add:

1. IP local: adminserver soaserver1 soaserver2 serverinfra
2. IP DB server: soadb

```
10.11.4.216      soadapp02 soadapp02 adminserver soaserver1 soaserver2 serverinfra
10.11.4.198      soad02srv soadb
```

soadb is used into rcu config and domain config files.

Run:

```
./00-prepareSystem.sh
```

### Install Binaries ###

Do an Fusion Middleware installation.
 
Run with user: *oracle*

```
su - oracle
```

Adapt environement:

1. Variables into ./binaries/fmw12-env.sh

```
# Environement Key name
export SOA_ENV=DEV
# Database URI
export RCU_URI=soadb:1521:SID
```

2. Add password files: ./binaries/rcuSOAPasswords.$SOA_ENV.txt

* 1st is sys password
* 2nd is password for accounts

Run:

```
./01-installBinaries.sh
```

### Create SOA Domain ###

Create Weblogic domain with SOA, OSB, B2B and ESS servers.

Configure your domain with this file:
./domain/domain.$SOA_ENV.properties

Run:

```
./02-create_domain.sh
```


### Post Installation ###

Finalize some little steps on domain created.

Run:

```
./03-postInstallation.sh
```

Change into config.xml

Comment an empty file-store 
```
  <file-store>
    <name/>
    <directory/>
    <target>AdminServer</target>
  </file-store>
```
by
```
  <!-- file-store>
    <name/>
    <directory/>
    <target>AdminServer</target>
  </file-store -->
```


### Script control ###

Install script to manager FMW domain.

Run:

```
./04-controlScripts.sh
```
```
. ./setEnv.sh
cd $SCRIPTS_DIR
```

*Start Nodemanager*

```
./fmw_nodemanager.sh start
```

Check logs:
```
tail -500f /SOA/u01/oracle/logs/nodemanager.log

<Apr 8, 2019 4:25:20 PM CEST> <INFO> <Loading domains file: /SOA/u01/oracle/config/domains/cfl_domain/nodemanager/nodemanager.domains>
<Apr 8, 2019 4:25:21 PM CEST> <INFO> <Upgrade> <Setting NodeManager properties version to 12.2.1.3.0>
<Apr 8, 2019 4:25:21 PM CEST> <INFO> <Upgrade> <Saving upgraded NodeManager properties to '/SOA/u01/oracle/config/domains/cfl_domain/nodemanager/nodemanager.properties'>
<Apr 8, 2019 4:25:21 PM CEST> <INFO> <Loading domains file: /SOA/u01/oracle/config/domains/cfl_domain/nodemanager/nodemanager.domains>
<Apr 8, 2019 4:25:22 PM CEST> <INFO> <Loading identity key store: FileName=kss://system/demoidentity, Type=kss, PassPhraseUsed=true>
<Apr 8, 2019 4:25:29 PM CEST> <INFO> <Loaded NodeManager configuration properties from '/SOA/u01/oracle/config/domains/cfl_domain/nodemanager/nodemanager.properties'>
<Apr 8, 2019 4:25:29 PM CEST> <INFO> <12.2.1.3.0>
<Apr 8, 2019 4:25:29 PM CEST> <INFO> <cfl_domain> <AdminServer> <Startup configuration properties loaded from "/SOA/u01/oracle/config/domains/cfl_domain/servers/AdminServer/data/nodemanager/startup.properties">
<Apr 8, 2019 4:25:29 PM CEST> <INFO> <Server Implementation Class: weblogic.nodemanager.server.NMServer$ClassicServer.>
<Apr 8, 2019 4:25:29 PM CEST> <INFO> <Secure socket listener started on port 5556, host soaserver1/10.1.4.216>
```

*Start AdminServer*

```
./fmw_admin_and_ms.sh start_admin

Initializing WebLogic Scripting Tool (WLST) ...

Welcome to WebLogic Server Administration Scripting Shell

Type help() for help on available commands

Connecting to Node Manager ...
<Apr 8, 2019 4:44:00 PM CEST> <Info> <Security> <BEA-090905> <Disabling the CryptoJ JCE Provider self-integrity check for better startup performance. To enable this check, specify -Dweblogic.security.allowCryptoJDefaultJCEVerification=true.>
<Apr 8, 2019 4:44:00 PM CEST> <Info> <Security> <BEA-090906> <Changing the default Random Number Generator in RSA CryptoJ from ECDRBG128 to HMACDRBG. To disable this change, specify -Dweblogic.security.allowCryptoJDefaultPRNG=true.>
<Apr 8, 2019 4:44:01 PM CEST> <Info> <Security> <BEA-090909> <Using the configured custom SSL Hostname Verifier implementation: weblogic.security.utils.SSLWLSHostnameVerifier$NullHostnameVerifier.>
Successfully Connected to Node Manager.

FAILED_NOT_RESTARTABLE

Starting AdminServer...
Starting server AdminServer ...
Successfully started server AdminServer ...

RUNNING

AdminServer is RUNNING
```

*Start all servers*

```
./fmw_admin_and_ms.sh start_ms
```

*Stop all servers*

```
./fmw_admin_and_ms.sh stop_ms
```

*Stop Admin server*

```
./fmw_admin_and_ms.sh stop_admin
```


*Stop all*

```
./fmw_admin_and_ms.sh stop_ms
```
*Start all*