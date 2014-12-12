# == Class jboss::install
#
# This class is called from jboss for install.
#
class jboss::install {
  if $::jboss::install_method == 'rpm' {
    yumgroup { $::jboss::package_name:
      ensure => present,
    }
  } else {
    class { 'staging':
      path  => '/var/staging',
      owner => '$::jboss::user',
      group => '$::jboss::group',
    }

    staging::file { 'jboss.tar.gz':
      source => $::jboss::zip_source,
    }

    staging::extract { 'jboss.tar.gz':
      target  => '/opt',
      creates => '/opt/jboss',
      require => Staging::File['jboss.tar.gz'],
    }
  }
}
