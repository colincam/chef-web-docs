.. The contents of this file may be included in multiple topics (using the includes directive).
.. The contents of this file should be modified in a way that preserves its ability to appear in multiple topics.

.. To mount a remote |windows| folder on local drive letter T:

.. code-block:: ruby

   mount 'T:' do
     action :mount
     device '\\\\hostname.example.com\\folder'
   end
