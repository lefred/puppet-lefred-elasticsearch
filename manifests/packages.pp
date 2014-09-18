class elasticsearch::packages {

  $packs   = [ "java-1.7.0-openjdk", elasticsearch" ]
   
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