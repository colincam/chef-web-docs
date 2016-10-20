
.. tag plugin_knife_windows_winrm_domain_authentication

The ``knife windows`` plugin supports Microsoft Windows domain authentication. This requires:

* An SSL certificate on the target node
* The certificate details can be viewed and its `thumbprint hex values copied <http://msdn.microsoft.com/en-us/library/ms788967.aspx>`_

To create the listener over HTTPS, run the following command:

.. code-block:: bash

   $ winrm create winrm/config/Listener?Address=IP:<ip_address>+Transport=HTTPS @{Hostname="<fqdn>";CertificateThumbprint="<hexidecimal_thumbprint_value>"}

where the ``CertificateThumbprint`` is the thumbprint hex value copied from the certificate details. (The hex value may require that spaces be removed before passing them to the node using the ``knife windows`` plugin.) WinRM 2.0 uses port ``5985`` for HTTP and port ``5986`` for HTTPS traffic, by default.

To bootstrap the target node using the ``knife bootstrap`` subcommand, first use the ``winrm`` argument in the ``knife windows`` plugin to verify communication with the node:

.. code-block:: bash

   $ knife winrm 'node1.domain.com' 'dir' -m -x domain\\administrator -P 'super_secret_password' –p 5986

and then run a command similar to the following:

.. code-block:: bash

   $ knife bootstrap windows winrm 'node1.domain.com' -r 'role[webserver]' -x domain\\administrator -P 'password' -p 5986


.. end_tag

