# == Class: jboss
#
# Manages the Red Hat JBoss
#
# === Parameters
#
# [*package_name*]
#   Name of the package. Defaults to ...
# [*service_name*]
#   Name of the service. Defaults to...
# [*install_method*]
#   Can be rpm or zip. Defaults to rpm.
# [*zip_source*]
#   No default. Can be puppet:/// URI or URL
class jboss (
  $user = $::jboss::params::user,
  $group = $::jboss::params::group,
  $package_name = $::jboss::params::package_name,
  $service_name = $::jboss::params::service_name,
  $install_method = $::jboss::params::install_method,
  $zip_source = '',
) inherits ::jboss::params {

  # validate parameters here

  class { '::jboss::install': } ->
  class { '::jboss::config': } ~>
  class { '::jboss::service': } ->
  Class['::jboss']
}
