
.. tag resource_package_windows_download_custom_package

.. To download a custom package:

.. code-block:: ruby

   windows_package 'Microsoft Visual C++ 2005 Redistributable' do
     source 'https://download.microsoft.com/download/6/B/B/6BB661D6-A8AE-4819-B79F-236472F6070C/vcredist_x86.exe'
     installer_type :custom
     options '/Q'
   end

.. end_tag

