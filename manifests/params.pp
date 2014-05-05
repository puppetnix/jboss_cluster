class jboss_cluster::params {
  include jboss::params
  $cnx_client = $jboss::params::cnx_client
  $cnx_envtag = $jboss::params::cnx_envtag
  $cnx_instance = $jboss::params::cnx_instance
  
}