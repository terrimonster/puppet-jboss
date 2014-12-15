# == Class: jboss
#
# Manages the Red Hat JBoss
#
# === Parameters
#
# [*package_name*]
#   Name of the package. Defaults to 'JBoss EAP 6'
# [*install_method*]
#   Can be rpm or zip. Defaults to rpm.
# [*type*]
#   Can be standalone or domain. Standalone is default.
# [*zip_source*]
#   No default. Can be puppet:/// URI or URL
class jboss (
  $user = $::jboss::params::user,
  $group = $::jboss::params::group,
  $type = $::jboss::params::type,
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
