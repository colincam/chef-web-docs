
.. tag ctl_kitchen_common_option_platforms

For example, if a .kitchen.yml file contains the following:

.. code-block:: javascript
   
    - name: centos-5.10
    - name: centos-6.5
    - name: fedora-19
    - name: ubuntu-1004
    - name: ubuntu-1204
    - name: ubuntu-1310
   
then a regular expression like ``(04|5)`` would run Kitchen against ``centos-5.10``, ``centos-6.5``, ``ubuntu-1004``, and ``ubuntu-1204``. A regular expression like ``(ubuntu)`` would run Kitchen against ``ubuntu-1004``, ``ubuntu-1204``, and ``ubuntu-1310``. A regular expression like ``(fedora-19)`` would run Kitchen against only ``fedora-19``. Default: ``all``.

.. end_tag

