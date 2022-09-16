# install flask from pip3
package { 'flask':
  ensure => 'installed',
  source => 'pip3',
}
