# == Class jboss::install
#
# This class is called from jboss for install.
#
class jboss::install {

  package { $::jboss::package_name:
    ensure => present,
  }
}
