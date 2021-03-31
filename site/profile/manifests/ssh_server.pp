class profile::ssh_server {
  package {'openssh-server':
    ensure => present,
  }
  service {'sshd':
    ensure => running,
    enable => true,
  }
  ssh_authorized_key {'root@master.puppet.vm':
    ensure => present,
    user => 'root',
    type => 'ssh-rsa',
    key => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQDKMVchx6XJp2igO7wWXv5apD4m04NIsFKk/w7BNwz4plTWInolAGJx986E5UjAggk0NG3ldbp+Wn/bbx2GobK0Cvsc9ZW+ijBSN/Ugb80cY+nl2cXClpURc8906DEeWqJ6FYlgzPH/2WMnAJk/V7zxEn6xFII50tvTi9aaBQV981yYnuZtBvDviH85b+DEdSSODA/1lLL/uJ6k/bhtmU+jS0iMXxgy97RC/LHCET49YFyq2L6gY2UW87pwqJwkOeG+NyON028+kwDj9N4cCX8Z3pCdIh8s5CE9EKjZNL0E1jy1JZvqZ22OSJKsrTrGKEn1vBwopDaSrpEhIm3M7nkf',
  }
}