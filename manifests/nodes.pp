node 'controller' {
	file { '/tmp/hello':
		content => "Hello, world\n",
	}
}
