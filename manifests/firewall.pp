class jboss_cluster::firewall { 
  if $jboss_cluster::firewall {
    firewall { '443 allow jboss cluster':
      chain   => 'INPUT',
      state   => ['NEW'],
      dport   => '443',
      proto   => 'tcp',
      action  => 'accept',
    }
  }
}