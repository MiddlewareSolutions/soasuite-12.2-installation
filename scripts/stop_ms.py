nmConnect(nodemgr_user, nodemgr_pwd, nodemgr_host, nodemgr_port, domain_name, domain_dir)

stopped = 'SHUTDOWN'

if nmServerStatus('soa_server1') != stopped :
  print 'Stopping soa_server1...'
  nmKill('soa_server1')
print 'soa_server1 is '+nmServerStatus('soa_server1')

if nmServerStatus('soa_server2') != stopped :
  print 'Stopping soa_server2...'
  nmKill('soa_server2')
print 'soa_server2 is '+nmServerStatus('soa_server2')

if nmServerStatus('ess_server1') != stopped :
  print 'Stopping ess_server1...'
  nmKill('ess_server1')
print 'ess_server1 is '+nmServerStatus('ess_server1')

if nmServerStatus('ess_server2') != stopped :
  print 'Stopping ess_server2...'
  nmKill('ess_server2')
print 'ess_server2 is '+nmServerStatus('ess_server2')
