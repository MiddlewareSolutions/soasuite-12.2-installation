nmConnect(nodemgr_user, nodemgr_pwd, nodemgr_host, nodemgr_port, domain_name, domain_dir)

running = 'RUNNING'
servename = 'AdminServer'
if nmServerStatus(servename) != running :
  print 'Stqrting '+servename+'...'
  nmStart(servename)
print servename +' is '+nmServerStatus(servename)

