require 'rubygems'
require 'sailthru' #if usingi as gem

def sailthru 
    api_key = 'your api key goes here'
    api_secret = 'your api secret goes here'
    api_url = 'https://api.sailthru.com'
    Sailthru::SailthruClient.new(api_key, api_secret, api_url)
end


