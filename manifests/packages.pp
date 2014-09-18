class elasticsearch::packages {

   
  case $::osfamily {
          'RedHat': {
                $packs   = "redis"
                $require = Yumrepo['elasticsearch']
                
          }
          'Debian': {
                $packs   = "redis-server"
                $require = Apt::Source['elasticsearch']
          }
  }
  package {
    $packs:
        require => $require,
        ensure  => "installed";
  } 

  
}