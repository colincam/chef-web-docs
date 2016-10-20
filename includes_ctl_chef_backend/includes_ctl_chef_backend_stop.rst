
.. tag ctl_chef_backend_stop

Use the ``stop`` subcommand to stop all services enabled on the Chef server backend HA cluster. This command can also be run for an individual service by specifying the name of the service in the command. 

This subcommand has the following syntax:

.. code-block:: bash

   $ chef-backend-ctl stop SERVICE_NAME

where ``SERVICE_NAME`` represents the name of any service that is listed after running the ``service-list`` subcommand. When a service is successfully stopped the output should be similar to:

.. code-block:: bash

   $ ok: diwb: service_name: 0s, normally up

For example:

.. code-block:: bash

   $ chef-backend-ctl stop

will return something similar to:

.. code-block:: bash

   ok: down: etcd: 393s, normally up
   ok: down: postgresql: 388s, normally up

.. end_tag

