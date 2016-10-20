
.. tag resource_directory_create_in_windows

.. To create a directory in Microsoft Windows:

.. code-block:: ruby

   directory "C:\\tmp\\something.txt" do
     rights :full_control, "DOMAIN\\User"
     inherits false
     action :create
   end

or:

.. code-block:: ruby

   directory 'C:\tmp\something.txt' do
     rights :full_control, 'DOMAIN\User'
     inherits false
     action :create
   end

.. note:: The difference between the two previous examples is the single- versus double-quoted strings, where if the double quotes are used, the backslash character (``\``) must be escaped using the Ruby escape character (which is a backslash).

.. end_tag

