# Class: jboss_cluster
#
# This module manages jboss_cluster
#
# Parameters: none
#
# Actions:
#
# Requires: see Modulefile
#
# Sample Usage:
#
class jboss_cluster (nameserver=''){
  include jboss_cluster::apache
}
