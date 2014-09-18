class elasticsearch::packages {

  case $::osfamily {
          'RedHat': {
                $require = Yumrepo['elasticsearch']
                $packs  = [ "java-1.7.0-openjdk", "elasticsearch" ]
                
          }
          'Debian': {
                $require = Apt::Source['elasticsearch']
                $packs  = [ "openjdk-7-jre-lib", "elasticsearch" ]
          }
  }
  package {
    $packs:
        require => $require,
        ensure  => "installed";
  } 

  
}