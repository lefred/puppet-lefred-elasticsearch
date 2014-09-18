class elasticsearch {

  include elasticsearch::repository
  include elasticsearch::packages
  #include elasticsearch::config
  include elasticsearch::service
  
  Class['elasticsearch::repository'] -> Class['elasticsearch::packages'] -> Class['elasticsearch::service']
 
}