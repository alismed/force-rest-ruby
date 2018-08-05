require 'yaml'
require 'json'
require 'rest-client'

class Util
  
  def self.get_credentials
    credentials = YAML.load(File.open("./config.yml"))['credentials']
  end

  def self.authenticate
    credentials = get_credentials

    response = RestClient.post(
                                credentials['url_base'] + '/services/oauth2/token',
                                {
                                  :grant_type => 'password',
                                  :client_id => credentials['client_id'],
                                  :client_secret => credentials['client_secret'],
                                  :username => credentials['username'],
                                  :password => credentials['password'] + credentials['token']
                                },
                                content_type: 'application/x-www-form-urlencoded'
                              )
  
    result = response.body
    parsed = JSON.parse(result)
  end
  
  def self.get_limits
    credentials = Util.authenticate
    url = credentials['instance_url'] + '/services/data/v43.0/limits/'
    response = RestClient.get(url,
                              {:Authorization => 'Bearer ' + credentials['access_token'],
                               :content_type => 'application/json'})

    parsed_response =  JSON.parse(response.body)
  end

  def self.get_versions
    credentials = get_credentials
    url = credentials['url_base'] + '/services/data/'
    response = RestClient.get(url, {:content_type => 'application/json'})

    parsed_response =  JSON.parse(response.body)
  end

  def self.get_last_version
    versions = get_versions
    versions.last
  end
end
