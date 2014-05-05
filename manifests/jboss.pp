class jboss_cluster::jboss {
  include ::jboss
  jboss::instance{'jboss_instance1':
    cnx_bindip => $::ipaddress_eth0,
  }
  jboss::instance{'jboss_instance2':
    cnx_bindip => $::ipaddress_eth1,
  }
}