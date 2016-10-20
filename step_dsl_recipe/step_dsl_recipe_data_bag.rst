
.. tag dsl_recipe_data_bag

.. The following is an example of using the ``data_bag`` method:

.. code-block:: ruby

   data_bag('users') #=> ['sandy', 'jill']

Iterate over the contents of the data bag to get the associated ``data_bag_item``:

.. code-block:: ruby

   data_bag('users').each do |user|
     data_bag_item('users', user)
   end

The ``id`` for each data bag item will be returned as a string.

.. end_tag

