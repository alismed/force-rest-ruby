Requirement
============
[Defining Connected Apps](https://developer.salesforce.com/docs/atlas.en-us.api_rest.meta/api_rest/intro_defining_remote_access_applications.htm)

[Reset Your Security Token](https://help.salesforce.com/articleView?id=user_security_token.htm&type=5)

[Introducing Lightning Platform REST API](https://developer.salesforce.com/docs/atlas.en-us.api_rest.meta/api_rest/intro_what_is_rest_api.htm)

Setup
======
Create a config.yml file from config-example.yml file and fill in the values appropriately from salesforce.com account.


	$ cp config-example.yml config.yml

Update the VALUE with appropriate values for :code:`client_id`, :code:`client_secret`, :code:`username` and :code:`password`.


Get Limits
===========
Execute the program to list limits information for your organization


	$ ruby get_limits.rb


