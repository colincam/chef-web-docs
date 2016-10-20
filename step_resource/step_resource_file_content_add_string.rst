
.. tag resource_file_content_add_string

The following example specifies a directory, and then uses the ``content`` property to add a string to the file created in that directory: 

.. code-block:: ruby

   status_file = '/path/to/file/status_file'
   
   file status_file do
     owner 'root'
     group 'root'
     mode '0755'
     content 'My favourite foremost coastal Antarctic shelf, oh Larsen B!'
   end

.. end_tag

