Setup
======
Create a config.yml file from config-example.yml file and fill in the values appropriately from salesforce.com account.

::

	$ cp config-example.yml config.yml

Update the VALUE with appropriate values for :code:`client_id`, :code:`client_secret`, :code:`username` and :code:`password`.

::

Get Limits
===========
Execute the program to list limits information for your organization

::

	$ ruby get_limits.rb

::

