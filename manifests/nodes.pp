node 'cookbook', 'cookbook2' {
  include puppet

  file { '/tmp/hello':
    content => "Hello, world\n",
  }
}
