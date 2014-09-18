class elasticsearch::repository {

 case $::osfamily {
    'RedHat': {
			 	yumrepo {
			     		"elasticsearch":
			            		descr       => "Elasticsearch repository for 1.0.x pacakges",
			            		enabled     => 1,
			            		baseurl     => "http://packages.elasticsearch.org/elasticsearch/1.0/centos",
			                gpgkey      => "http://packages.elasticsearch.org/GPG-KEY-elasticsearch",
			            		gpgcheck    => 1;
				}
    }
    'Debian': {
	      include ::apt
        apt::source {
							"elasticsearch":
								      location	=> "http://packages.elasticsearch.org/elasticsearch/1.0/debian",
								      release		=> "stable",
								      repos		=> "main",
								      key		=> "D88E42B4",
								      key_source	=> false,
								      include_src	=> false
        }

    }  
  }
}
