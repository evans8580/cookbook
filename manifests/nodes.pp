node 'demo' {
  nginx::website { 'adorable-animals':
    site_domain => 'adorable-animals.com',
  }
  nginx::website { 'adorable-animals-staging':
    site_domain => 'staging.adorable-animals.com',
  }
  include useradd
  include ssh
  include execdemo
  include backup
  include cat-pictures

  class { 'ntp':
    server => 'us.pool.ntp.org',
  }

  file { '/tmp/test':
    content => 'Zaphod Beeblebrox, this is a very large drink',
  }

  file { '/tmp/puppet.lastrun':
    content => inline_template('<%= Time.now %>'),
    backup  => false,
  }
}

node 'demo2' {
  nginx::website { 'amusing-animals':
    site_domain => 'funny.adorable-animals.com',
  }
  nginx::website { 'dog-pictures':
    site_domain => 'dog-pictures',
  }
  include useradd
  include ssh
  include execdemo
  include backup
  include cat-pictures

  class { 'ntp':
    server => 'us.pool.ntp.org',
  }

  file { '/tmp/puppet.lastrun':
    content => inline_template('<%= Time.now %>'),
    backup  => false,
  }
}
