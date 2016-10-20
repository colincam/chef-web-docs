
.. tag resource_machine_actions

This resource has the following actions:

``:allocate``
   Use to create a machine, return its machine identifier, and then (depending on the provider) boot the machine to an image. This reserves the machine with the provider and subsequent ``:allocate`` actions against this machine no longer need to create the machine, just update it.

``:converge``
   Default. Use to create a machine, return its machine identifier, boot the machine to an image with the specified parameters and transport, install the chef-client, and then converge the machine.

``:converge_only``
   Use to converge a machine, but only if the machine is in a ready state.

``:destroy``
   Use to destroy a machine.

``:nothing``
   .. tag resources_common_actions_nothing
   
   Define this resource block to do nothing until notified by another resource to take action. When this resource is notified, this resource block is either run immediately or it is queued up to be run at the end of the chef-client run.
   
   .. end_tag
   

``:ready``
   Use to create a machine, return its machine identifier, and then boot the machine to an image with the specified parameters and transport. This machine is in a ready state and may be connected to (via SSH or other transport).

``:setup``
   Use to create a machine, return its machine identifier, boot the machine to an image with the specified parameters and transport, and then install the chef-client. This machine is in a ready state, has the chef-client installed, and all of the configuration data required to apply the run-list to the machine. 

``:stop``
   Use to stop a machine.

.. end_tag

