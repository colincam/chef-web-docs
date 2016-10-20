
.. tag resource_service_reboot_immediately

.. To reboot immediately:

.. code-block:: ruby

   reboot 'now' do
     action :nothing
     reason 'Cannot continue Chef run without a reboot.'
     delay_mins 2
   end
   
   execute 'foo' do
     command '...'
     notifies :reboot_now, 'reboot[now]', :immediately
   end

.. end_tag

