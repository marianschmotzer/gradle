# == Class: gradle
#
# Full description of class puppetmaster here.
#
# === Parameters
#
# Document parameters here.
#
# [*version*]
# Version of gradle to install
#
# [*install_dir] 
# directory to install gradle too
#
# [*download_url]
# url to download gradle from
#
#
#
# === Variables
#
# Here you should define a list of variables that this module would require.
#
# [*sample_variable*]
#   Explanation of how this variable affects the funtion of this class and if
#   it has a default. e.g. "The parameter enc_ntp_servers must be set by the
#   External Node Classifier as a comma separated list of hostnames." (Note,
#   global variables should be avoided in favor of class parameters as
#   of Puppet 2.6.)
#
# === Examples
#
#  class { puppetmaster:
#    servers => [ 'pool.ntp.org', 'ntp.local.company.com' ],
#  }
#
# === Authors
#
# Marian Schmotzer <marian.schmotzer@chillisys.com>
#
# === Copyright
#
# Copyright 2016 Your name here, unless otherwise noted.
#
class gradle(
  $version,
  $install_dir    = '/usr/local/gradle/',
  $download_url   = "https://services.gradle.org/distributions/gradle-${version}-bin.zip",

){
  unless  $version {
    err("Gradle version must be defined!!!")
  }
  file {$install_dir:
    ensure => directory
  }
  archive { "/tmp/gradle-${version}-bin.zip":
    ensure       => present,
    extract      => true,
    extract_path => $install_dir,
    source       => $download_url,
    creates      => "${install_dir}/gradle-${version}",
    cleanup      => true,
  }->
  file{"/usr/bin/gradle":
    ensure => link,
    target => "${install_dir}/gradle-${version}/bin/gradle",
  }

}
