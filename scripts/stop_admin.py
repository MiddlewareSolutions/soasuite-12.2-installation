nmConnect(nodemgr_user, nodemgr_pwd, nodemgr_host, nodemgr_port, domain_name, domain_dir)

stopped = 'SHUTDOWN'
servename = 'AdminServer'
if nmServerStatus(servename) != stopped :
  print 'Stopping '+servename+'...'
  nmKill(servename)
print servename +' is '+nmServerStatus(servename)

