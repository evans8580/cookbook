class puppet {
  file { '/usr/local/bin/papply':
    source => 'puppet:///modules/puppet/papply.sh',
    mode   => '0755',
  }

  file { '/usr/local/bin/pull-updates':
    source => 'puppet:///modules/puppet/pull-updates.sh',
    mode   => '0755',
  }

  file { '/home/evans/.ssh/id_rsa':
    source => 'puppet:///modules/puppet/ubuntu.priv',
    owner  => 'evans',
    mode   => '0600',
  }

  file { '/home/evans/.ssh/id_rsa.pub':
    source => 'puppet:///modules/puppet/ubuntu.pub',
    owner  => 'evans',
    mode   => '0644',
  }

  cron { 'run-puppet':
    ensure  => 'present',
    user    => 'evans',
    command => '/usr/local/bin/pull-updates',
    minute  => '*/10',
    hour    => '*',
  }
}
