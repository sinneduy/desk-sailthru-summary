#autoload :sailthru, getdesk.rb
require 'rubygems'
require File.join File.dirname(__FILE__), 'getdesk'
require File.join File.dirname(__FILE__), 'sail'

nameOfAgent = desk("nameOfAgent", "timePeriod")

vars = {'nameOfAgent' => nameOfAgent}

email = "example@example.com"
template = "Name of Template in Sailthru"


sresponse = sailthru.send(template, email, vars)
p sresponse

