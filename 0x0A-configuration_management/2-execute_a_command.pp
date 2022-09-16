# A manifest that kills a process
exec { 'killmenow':
  command  => 'pkill killmenow',
  provider => 'shell'
}
