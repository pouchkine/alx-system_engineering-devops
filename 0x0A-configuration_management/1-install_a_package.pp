# This Puppet manifest kills a process named 'killmenow' using the exec resource and pkill

package { 'pip3':
  ensure => 'installed',
}

exec { 'install_flask':
  command => '/usr/bin/pip3 install flask==2.1.0',
  require => Package['pip3'],
}

