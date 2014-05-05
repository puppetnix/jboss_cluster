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
class jboss_cluster ($nameserver='first.example.com'){
  include jboss_cluster::apache, jboss_cluster::jboss
}
