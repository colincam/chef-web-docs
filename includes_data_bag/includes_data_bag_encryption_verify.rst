.. The contents of this file may be included in multiple topics (using the includes directive).
.. The contents of this file should be modified in a way that preserves its ability to appear in multiple topics.

When the contents of a data bag item are encrypted, they will not be readable until they are decrypted. Encryption can be verified with a |knife| command similar to:

.. code-block:: bash

   $ knife data bag show passwords mysql

where "passwords" is the name of the data bag and "mysql" is the name of the data bag item. This will return something similar to: 

.. code-block:: none

   id:   mysql
   pass:
   cipher:         aes-256-cbc
   encrypted_data: JZtwXpuq4Hf5ICcepJ1PGQohIyqjNX6JBc2DGpnL2WApzjAUG9SkSdv75TfKSjX4
   iv:             VYY2qx9b4r3j0qZ7+RkKHg==
   version:        1
   user:
   cipher:         aes-256-cbc
   encrypted_data: 10BVoNb/plkvkrzVdybPgFFII5GThZ3Op9LNkwVeKpA=
   iv:             uIqKHZ9skJlN2gpJoml6rQ==
   version:        1
