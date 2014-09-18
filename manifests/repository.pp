class elasticsearch::repository {

 $version = $elasticsearch::version

 case $::osfamily {
    'RedHat': {
			 	yumrepo {
			     		"elasticsearch":
			            		descr       => "Elasticsearch repository for ${version}.x packages",
			            		enabled     => 1,
			            		baseurl     => "http://packages.elasticsearch.org/elasticsearch/${version}/centos",
			                gpgkey      => "http://packages.elasticsearch.org/GPG-KEY-elasticsearch",
			            		gpgcheck    => 1;
				}
    }
    'Debian': {
	      include ::apt
        apt::source {
							"elasticsearch":
								      location	=> "http://packages.elasticsearch.org/elasticsearch/${version}/debian",
								      release		=> "stable",
								      repos		=> "main",
								      key		=> "D88E42B4",
								      key_source	=> false,
								      include_src	=> false
        }

    }  
  }
}
