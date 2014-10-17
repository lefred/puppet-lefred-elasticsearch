class elasticsearch::head {

   exec {
      'install_head':
	command   => "bin/plugin -install mobz/elasticsearch-head",
        cwd       => "/usr/share/elasticsearch",
        path      => "/bin/:/usr/bin/:/sbin/:/usr/sbin",
        unless    => "ls /usr/share/elasticsearch/plugins/head 2>/dev/null", 
	require   => Class['elasticsearch'],
   }


}
