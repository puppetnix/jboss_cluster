class jboss_cluster::firewall { 
  if $jboss_cluster::firewall {
    firewall { '80 allow jboss cluster':
      chain   => 'INPUT',
      state   => ['NEW'],
      dport   => '80',
      proto   => 'tcp',
      action  => 'accept',
    }
  }
}