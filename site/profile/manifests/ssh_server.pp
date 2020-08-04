class profile::ssh_server {
	package {'openssh-server':
		ensure => present,
	}
	service { 'sshd':
		ensure => 'running',
		enable => 'true',
	}
	ssh_authorized_key { 'root@master.puppet.vm':
		ensure => present,
		user   => 'root',
		type   => 'ssh-rsa',
		key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQDJO/GRKEif1FjIocqv+QQ8ign2umuQ85hsexL2FYN/XY/nl9y2k5HaB2Z/R7x7TNPDxcG2TKJNTaExaXVPPgyBVsvGafLA9C/J5X8XmNorOL4vUZLbk9iyFoouwK9ogKI6e6C4jfaGCPOweYkBF/0iXxfi1Tv2K9qE0QnzywAGCOfORGsgJh/MPgUYVfWxI/v0u0YbiXBRChbD3nUGPHv91yiXL2o5YSVDOdqXKWh+G/EOIzue80HQItACG8W/Gb+1/88j6IakdXandqTaNbzY/HscJo9+2XtaYq24X70uKN5n1bshhZwBDDJKsOY4TF8xQbSLd1T4x32jWoP+apXL',
	}  
}
