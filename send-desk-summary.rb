require 'rubygems'
require 'sailthru'
require 'json'

def sailthru
    api_key = 'your api key goes here'
    api_secret = 'your api secret goes here'
    api_url = 'https://api.sailthru.com'
    Sailthru::SailthruClient.new(api_key, api_secret, api_url)
end


def desk(user, time, host = example)
   response = `twurl --host #{host}.desk.com "/api/v1/cases.json?assigned_user=#{user}&updated=#{time}&count=100"`
    jresponse = JSON.parse(response)
    if jresponse['count'] > jresponse['total']
      for i in 2..((jresponse['count']/100)+1)
        nresponse = `twurl --host #{host}.desk.com "/api/v1/cases.json?assigned_user=#{user}&udpated=#{time}&count=100&page=#{i}"`
        jnresponse = JSON.parse(response)
        jresponse['results'] << jnresponse['results']
      end
    end
  return jresponse
end

def sendSummary(nameOfAgent, timePeriod, email, template)
  data = desk(nameOfAgent, timePeriod)
  vars = {'desk' => data}
  sresponse = sailthru.send(template, email, vars)
  return sresponse
end

# note that nameOfAgent is case sensitive in Desk()
