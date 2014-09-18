class elasticsearch::packages {

  $packs   = "elasticsearch"
   
  case $::osfamily {
          'RedHat': {
                $require = Yumrepo['elasticsearch']
                
          }
          'Debian': {
                $require = Apt::Source['elasticsearch']
          }
  }
  package {
    $packs:
        require => $require,
        ensure  => "installed";
  } 

  
}