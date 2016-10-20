
.. tag resources_common_package_yum_cache

Yum automatically synchronizes remote metadata to a local cache. The chef-client creates a copy of the local cache, and then stores it in-memory during the chef-client run. The in-memory cache allows packages to be installed during the chef-client run without the need to continue synchronizing the remote metadata to the local cache while the chef-client run is in-progress. 

.. end_tag

