class jboss_cluster::jboss {
  class {'::jboss':
    firewall => fasle,
  }
  jboss::instance{'jboss_instance1':
    cnx_bindip => $::ipaddress_eth0,
  }
  jboss::instance{'jboss_instance2':
    cnx_bindip => $::ipaddress_eth1,
  }
  service {'jboss_instance1':
    ensure => running,
    enable  => true,
    hasrestart => true,
    hasstatus => true,
    status => '/etc/init.d/jboss_instance1 status  | grep "is running"',
    require => Jboss::Instance['jboss_instance1'],
  }
   service {'jboss_instance2':
    ensure => running,
    enable  => true,
    hasrestart => true,
    hasstatus => true,
    status => '/etc/init.d/jboss_instance2 status  | grep "is running"',
    require => Jboss::Instance['jboss_instance2'],
  }
}