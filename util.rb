require 'yaml'
require 'json'
require 'rest-client'

class Util
  
  def self.authenticate
    credentials = YAML.load(File.open("./config.yml"))['credentials']
  
    response = RestClient.post(
                                'https://userede--preprod.cs79.my.salesforce.com/services/oauth2/token',
                                {
                                  :grant_type => 'password',
                                  :client_id => credentials['client_id'],
                                  :client_secret => credentials['client_secret'],
                                  :username => credentials['username'],
                                  :password => credentials['password'] + credentials['token']
                                },
                                content_type: :json
                              )
  
    result = response.body
    parsed = JSON.parse(result)
  end
  
  def self.get_limits()
    credentials = Util.authenticate
    url = credentials['instance_url'] + '/services/data/v43.0/limits/'
    response = RestClient.get(url,
                              {:Authorization => 'Bearer ' + credentials['access_token'],
                               :content_type => 'application/json'})

    parsed_response =  JSON.parse(response.body)
  end

end
