# == Class jboss::params
#
# This class is meant to be called from jboss.
# It sets variables according to platform.
#
class jboss::params {
  case $::osfamily {
    'RedHat': {
      unless $::operatingsystemmajrelease =~ /(5|6)/ {
        fail("${module_name} only supports RedHat 5 and 6")
      }
      $package_name = 'jboss-eap6'
      $service_name = 'jbossas'
      $user = 'jboss'
      $group = 'jboss'
    }
    default: {
      fail("${module_name} currently does not support ${::osfamily}")
    }
  }
}
