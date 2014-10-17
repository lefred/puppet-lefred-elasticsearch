class elasticsearch::curator {

   package {
      'python-pip':
         ensure   => "installed";
      'elasticsearch-curator':
	 ensure   => "installed",
	 require  => Package['python-pip'],
         provider => "pip";
   }

   cron { 
      'curator':
  	command => "curator -d 30 -T days",
  	user    => root,
  	hour    => 1,
  	minute  => 0
   }


}
