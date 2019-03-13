def startServer(servername):
  running = 'RUNNING'
  if nmServerStatus(servername) != running :
    print 'Starting '+servername+'...'
    nmStart(servername)
  printState(servername)

def printState(servername):
  print servername +' is '+nmServerStatus(servername)


try:

  nmConnect(nodemgr_user, nodemgr_pwd, nodemgr_host, nodemgr_port, domain_name, domain_dir)
  startServer('soa_server1')
  startServer('soa_server2')
  startServer('ess_server1')
  startServer('ess_server2')

except NameError, e:
  print 'Apparently properties not set.'
  print "Please check the property: ", sys.exc_info()[0], sys.exc_info()[1]
except:
  apply(traceback.print_exception, sys.exc_info())
  dumpStack()
  stopEdit('y')
  exit(exitcode=1)

exit()

