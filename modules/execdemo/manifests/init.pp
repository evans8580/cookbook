# Manage exec demo
class execdemo {
	exec { 'Run my arbitrary command':
		command => '/bin/echo I ran this command on `/bin/date` > /tmp/command.output.txt',
	}
	exec { 'command-1':
  		command => '/bin/echo Step 1',
	}

	exec { 'command-2':
  		command => '/bin/echo Step 2',
  		require => Exec['command-1'],
	}

	exec { 'command-3':
  		command => '/bin/echo Step 3',
  		require => Exec['command-2'],
	}

	file { '/tmp/the_answer.txt':
  		content => inline_template("What do you get if you multiply six by nine? <%= 6 * 7 %>.\n")
	}
}
