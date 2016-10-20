
.. tag manage_webui_reports_history_view_details_run_details

To view chef-client run-specific details:

#. Open the Chef management console.
#. Click **Reports**.
#. Click **Run History**.
#. Select the range of chef-client runs to show, the correct environment, and correct status.
#. Select a chef-client run.
#. Select the **Details** tab.
#. For a specific step, from the **Parameters** column, click the view icon to open the **Run Details** dialog box:

   .. image:: ../../images/step_manage_webui_reports_history_view_details_run_details.png

   where:

   .. list-table::
      :widths: 60 420
      :header-rows: 1
   
      * - Setting
        - Description
      * - ``Parameters``
        - The parameters that were set by the resource during the chef-client run.
      * - ``Initial State``
        - The state of the parameter at the start of the chef-client run.
      * - ``Final State``
        - The state of the parameter at the end of the chef-client run.

.. end_tag

