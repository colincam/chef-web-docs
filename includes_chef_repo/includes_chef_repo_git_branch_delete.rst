
.. tag chef_repo_git_branch_delete

After work has been merged by the branch maintainer, the topic branch is no longer necessary and should be removed.

#. Synchronize the local master:

   .. code-block:: bash
      
      $ git checkout master

   followed by:
   
   .. code-block:: bash
      
      $ git pull --rebase

#. Remove the local branch using ``-d`` to ensure that it has been merged by upstream. This option will not delete a branch that is not an ancestor of the current ``HEAD``. From the git man page:

   .. code-block:: bash
      
      -d
        Delete a branch. The branch must be fully merged in HEAD.
      -D
        Delete a branch irrespective of its merged status.

#. Remove the local branch:

   .. code-block:: bash
      
      $ git branch -d CHEF-XX

   Or remove the remote branch by using the full syntax to ``push`` and by omitting a source branch:

   .. code-block:: bash
      
      $ git push origin :CHEF-XX

.. end_tag

