
.. tag resource_package_use_provider_attribute

.. To use the ``:provider`` common attribute in a recipe:

.. code-block:: ruby

   package 'some_package' do
     provider Chef::Provider::Package::Rubygems
   end

.. end_tag

