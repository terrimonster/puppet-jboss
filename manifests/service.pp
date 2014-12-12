# == Class jboss::service
#
# This class is meant to be called from jboss.
# It ensure the service is running.
#
class jboss::service {

  service { $::jboss::service_name:
    ensure     => running,
    enable     => true,
    hasstatus  => true,
    hasrestart => true,
  }
}
