Requirement
============
[Get your Developer Edition](https://developer.salesforce.com/signup)

[Defining Connected Apps](https://developer.salesforce.com/docs/atlas.en-us.api_rest.meta/api_rest/intro_defining_remote_access_applications.htm)

[Reset Your Security Token](https://help.salesforce.com/articleView?id=user_security_token.htm&type=5)

[Introducing Lightning Platform REST API](https://developer.salesforce.com/docs/atlas.en-us.api_rest.meta/api_rest/intro_what_is_rest_api.htm)

Setup
======
Create a config.yml file from config-example.yml file and fill in the values appropriately from salesforce.com account.


	$ cp config-example.yml config.yml

Update the VALUE with appropriate values for `client_id`, `client_secret`, `username` and `password`.


Get Limits
===========
Execute the program to list limits information for your organization


	$ ruby get_limits.rb


Get Versions
=============
Execute the program to list the versions availables


	$ ruby get_versions.rb

Get Last Version
=================
Execute the program to list the last version available


	$ ruby get_last_version.rb

