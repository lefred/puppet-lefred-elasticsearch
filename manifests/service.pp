class elasticsearch::service {
 
  case $::osfamily {
          'RedHat': {
                $service = "elasticsearch" 
          }
          'Debian': {
                $service = "elasticsearch" 
          }
  }
  
  service {
    $service:
            enable    => true,
            ensure    => running,
            require   => Package[$elasticsearch::packages::packs],
  }
  
}