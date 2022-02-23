# change the limit of open files in nginx os
exec {'change limit':
  command  => "sudo sed -i 's/holberton soft nofile 4/holberton soft nofile 88888/g'  /etc/security/limits.conf",
  provider => shell
}

exec {'change limit':
  command  => "sudo sed -i 's/holberton hard nofile 5/holberton hard nofile 88888/g'  /etc/security/limits.conf",
  provider => shell
}
