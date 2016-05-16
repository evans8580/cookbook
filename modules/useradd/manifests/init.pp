# Manage adding user
class useradd {
	user { 'art':
		ensure		=> present,
		comment		=> 'Art Vandelay',
		home		=> '/home/art',
		managehome	=> true,
	}
	ssh_authorized_key { 'art_ssh':
		user	=> 'art',
		type	=> 'rsa',
		key	=> 'AAAAB3NzaC1yc2EAAAADAQABAAABAQCtMBt2vAiEAoQmivnz8YU1ATSJ7sjb4dZmxJHnUz8jp9m0SjxG7AESU4bB+N8n8ejEN85QN9OiNgIZal7Pla0p44Y4Dg8nLsAC5X5tcToQnfMdy+E1iysv1AaAn37VkprTjNTFr2jxQXJMpH2tBbrcrx2qPOKxNNxmR/K736QxiUQbzzzxhzj87sSRuTF1zDwC98vnPITjIkGkeuGuNVV01L1agZPLHumAa7LjSR49Aay0fmJLSMUIvRxF9VaohDTqq3SEIvsh5AxI0TIDr7hDtrXllJLI1rEQRd6D0aAbnFpDZ2UDmUQ7gKV39Wmigw+1STjn1NjyP8ndhsAnBXpf'
	}
}
