
.. tag upgrade_verify_nodes_and_cookbooks

Install the latest version of the chef-client on a small number of test nodes. Download all cookbooks, and then and check the following:

* Run ``knife cookbook test``. Do they all pass validation with the version of the chef-client you plan on using?
* Run ``egrep -L ^name */metadata.rb``. Do they all have a metadata.rb file? 
* Does the cookbook name in the metadata.rb file match the name in the run-list? (Some older versions of the chef-client used the cookbook name for the run-list based on the directory name of the cookbook and not the value of the ``cookbook_name`` setting in the metadata.rb file.)
* Do all cookbooks have a metadata.rb file or metadata.json file?
* Do all cookbooks used in the organization also exist in source control?
* Do unused cookbooks (or cookbook versions) exist in source control? Run ``knife cookbook list`` to view a list of cookbooks, and then for each cookbook run ``knife cookbook show COOKBOOK_NAME`` to view its versions. Delete unused cookbook versions with ``knife cookbook delete -v VERSION_NAME``.
* How large is a cookbook? Most cookbooks are quite small, under ~200 KB. Sometimes cookbooks need to be larger than that. For larger cookbooks, consider why they are that large. Do they contain unecessary binary files? Do they have a long git history? Mitigate the size of large cookbooks where possible.

Verify the nodes and clients that are in use:

* Are all nodes and/or clients in use? Clean up any extra nodes and clients. Use the ``knife node list``, ``knife client list``, and ``knife_status``` commands to verify nodes and clients that are in use.
* Use the ``knife_client delete`` command to remove unused clients. Use the ``knife_node delete`` command to remove unused nodes.

Run the test nodes against the Chef server. If the server is also being upgraded, first complete that upgrade process (ideally on a fresh operating system), including processes for any highly available, load balanced, or offloaded services, and then verify the test nodes against the upgraded Chef server.

.. end_tag

