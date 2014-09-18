class redis::service{
 
  case $::osfamily {
          'RedHat': {
                $service = "redis" 
          }
          'Debian': {
                $service = "redis-server" 
          }
  }
  
  service {
    "redis":
            name      => $service,
            enable    => true,
            ensure    => running,
            require   => Package[$redis::packages::packs],
  }
  
}