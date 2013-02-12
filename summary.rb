#autoload :sailthru, getdesk.rb
require 'rubygems'
require File.join File.dirname(__FILE__), 'getdesk'
require File.join File.dirname(__FILE__), 'sail'

def sendSummary(nameOfAgent, timePeriod, email, template)
  data = desk(nameOfAgent, timePeriod)
  vars = {'desk' => data}
  sresponse = sailthru.send(template, email, vars)
  return sresponse
end

# note that nameOfAgent is case sensitive in Desk()
