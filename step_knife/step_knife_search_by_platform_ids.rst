
.. tag knife_search_by_platform_ids

To search for the IDs of all nodes running on the Amazon EC2 platform, enter:

.. code-block:: bash

   $ knife search node 'ec2:*' -i

to return something like:

.. code-block:: bash

   4 items found
   
   ip-0A7CA19F.ec2.internal
   
   ip-0A58CF8E.ec2.internal
   
   ip-0A58E134.ec2.internal
   
   ip-0A7CFFD5.ec2.internal

.. end_tag

