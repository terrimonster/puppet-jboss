# == Class jboss::params
#
# This class is meant to be called from jboss.
# It sets variables according to platform.
#
class jboss::params {
  case $::osfamily {
    'Debian': {
      $package_name = 'jboss'
      $service_name = 'jboss'
    }
    'RedHat', 'Amazon': {
      $package_name = 'jboss'
      $service_name = 'jboss'
    }
    default: {
      fail("${::operatingsystem} not supported")
    }
  }
}
