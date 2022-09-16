# install flask from pip3
exec { 'flask':
  provider => 'pip3',
  command  => '/usr/bin/apt-get -y install flask -v 2.1.0',
}
