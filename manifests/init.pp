# == Class: jboss
#
# Full description of class jboss here.
#
# === Parameters
#
# [*sample_parameter*]
#   Explanation of what this parameter affects and what it defaults to.
#
class jboss (
  $package_name = $::jboss::params::package_name,
  $service_name = $::jboss::params::service_name,
) inherits ::jboss::params {

  # validate parameters here

  class { '::jboss::install': } ->
  class { '::jboss::config': } ~>
  class { '::jboss::service': } ->
  Class['::jboss']
}
