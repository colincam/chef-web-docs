
.. tag ctl_chef_backend_gen_sample_backend_config_example

The following example shows the results of running the ``chef-backend-ctl gen-sample-backend-config`` subcommand. The settings and output will vary, depending on the configuration. The ``elasticsearch``, ``etcd``, ``leaderl``, and ``postgresql`` settings are generated automatically and should not be modified:

.. code-block:: ruby

   fqdn = 'be1'
   hide_sensitive = true
   ip_version = 'ipv4'
   publish_address = '10.0.2.15'
   vip = '10.0.2.15'
   vip_interface = 'eth0'
   etcd.client_port = 2379
   etcd.enable = true
   etcd.log_directory = '/var/log/chef-backend/etcd'
   etcd.peer_port = 2380
   etcd.log_rotation.file_maxbytes = 104857600
   etcd.log_rotation.num_to_keep = 10
   postgresql.archive_command = ''
   postgresql.archive_mode = 'off'
   postgresql.archive_timeout = 0
   postgresql.checkpoint_completion_target = 0.5
   postgresql.checkpoint_timeout = '5min'
   postgresql.checkpoint_warning = '30s'
   postgresql.data_dir = '/var/opt/chef-backend/postgresql/9.5/data'
   postgresql.db_superuser = 'chef_pgsql'
   postgresql.effective_cache_size = '496MB'
   postgresql.enable = true
   postgresql.hot_standby = 'on'
   postgresql.keepalives_count = 2
   postgresql.keepalives_idle = 60
   postgresql.keepalives_interval = 15
   postgresql.log_directory = '/var/log/chef-backend/postgresql/9.5'
   postgresql.log_min_duration_statement = -1
   postgresql.max_connections = 350
   postgresql.max_replication_slots = 12
   postgresql.max_wal_senders = 12
   postgresql.max_wal_size = 64
   postgresql.md5_auth_cidr_addresses = '["samehost", "samenet"]'
   postgresql.min_wal_size = 5
   postgresql.port = 5432
   postgresql.replication_user = 'replicator'
   postgresql.shared_buffers = '248MB'
   postgresql.shmall = 4194304
   postgresql.shmmax = 17179869184
   postgresql.username = 'chef_pgsql'
   postgresql.wal_keep_segments = 32
   postgresql.wal_level = 'hot_standby'
   postgresql.wal_log_hints = 'on'
   postgresql.work_mem = '8MB'
   postgresql.log_rotation.file_maxbytes = 104857600
   postgresql.log_rotation.num_to_keep = 10
   elasticsearch.data_dir = '/var/opt/chef-backend/elasticsearch/data'
   elasticsearch.enable = true
   elasticsearch.heap_size = 248
   elasticsearch.java_opts = ''
   elasticsearch.log_directory = '/var/log/chef-backend/elasticsearch'
   elasticsearch.new_size = 32
   elasticsearch.plugins_directory = '/var/opt/chef-backend/elasticsearch/plugins'
   elasticsearch.port = 9200
   elasticsearch.scripts_directory = '/var/opt/chef-backend/elasticsearch/scripts'
   elasticsearch.temp_directory = '/var/opt/chef-backend/elasticsearch/'
   elasticsearch.log_rotation.file_maxbytes = 104857600
   elasticsearch.log_rotation.num_to_keep = 10
   leaderl.control_worker_timeout_seconds = 30
   leaderl.db_timeout = 2000
   leaderl.enable = true
   leaderl.health_check_interval_seconds = 2
   leaderl.leader_ttl_seconds = 10
   leaderl.log_directory = '/var/log/chef-backend/leaderl'
   leaderl.status_internal_update_interval_seconds = 5
   leaderl.status_post_update_interval_seconds = 10
   leaderl.log_rotation.file_maxbytes = 104857600
   leaderl.log_rotation.max_messages_per_second = 1000
   leaderl.log_rotation.num_to_keep = 10
   leaderl.etcd_pool.cull_interval_seconds = 60
   leaderl.etcd_pool.http_timeout_ms = 5000
   leaderl.etcd_pool.ibrowse_options = '{inactivity_timeout, infinity}'
   leaderl.etcd_pool.init_count = 10
   leaderl.etcd_pool.max_age_seconds = 60
   leaderl.etcd_pool.max_connection_duration_seconds = 300
   leaderl.etcd_pool.max_count = 10
   ssl.certificate = nil
   ssl.certificate_key = nil
   ssl.ciphers = (a list of cipers, not shown)
   ssl.company_name = 'YouCorp'
   ssl.country_name = 'US'
   ssl.data_dir = '/var/opt/chef-backend/ssl/'
   ssl.duration = 3650
   ssl.key_length = 2048
   ssl.organizational_unit_name = 'Operations'

.. end_tag

