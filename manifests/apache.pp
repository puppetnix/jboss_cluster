class jboss_cluster::apache {
  class { '::apache':
    default_vhost        => false,
  }
  apache::mod { 'proxy': }
  apache::mod { 'proxy_balancer': }
  apache::mod { 'proxy_ajp': }
  apache::vhost { $jboss_cluster::nameserver:
    port    => '443',
    ssl     => true,
    docroot => '/var/www/html',
    custom_fragment => template("${module_name}/proxy.erb"),
  }
}
