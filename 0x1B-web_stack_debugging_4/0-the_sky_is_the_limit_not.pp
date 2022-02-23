# change the limit ofopen files in nginx config
exec {'change limit':
  command  => "sudo sed -i 's/ULIMIT=\"-n 15\"/ULIMIT=\"-n 4096\"/g' /etc/default/nginx",
  provider => shell
}
