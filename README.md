module for elasticsearch

The purpose is to use it for sensu

This is how I define it in hiera:

      classes:
          - elasticsearch

      elasticsearch::version:  "1.3"
        
