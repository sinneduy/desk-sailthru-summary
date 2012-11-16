require 'rubygems'
require 'json'

def desk(user, time)
   response = `twurl --host example.desk.com "/api/v1/cases.json?assigned_user=#{user}&updated=#{time}&count=100"`
    jresponse = JSON.parse(response)
    if jresponse['count'] > jresponse['total']
      for i in 2..((jresponse['count']/100)+1)
        nresponse = `twurl --host example.desk.com "/api/v1/cases.json?assigned_user=#{user}&udpated=#{time}&count=100&page=#{i}"`
        jnresponse = JSON.parse(response)
        jresponse['results'] << jnresponse['results']
      end
    end
  return jresponse
end
