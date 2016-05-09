node 'controller', 'JUNHOLEE-M-W00U' {
	file { '/tmp/hello':
		content => "Hello, world\n",
	}
}
