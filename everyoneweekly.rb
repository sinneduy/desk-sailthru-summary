#autoload :sailthru, getdesk.rb
require 'rubygems'
require File.join File.dirname(__FILE__), 'getdesk'
require File.join File.dirname(__FILE__), 'sail'

dennis = desk("dennis", "today")

vars = {'dennis' => dennis}

email = "dyu@sailthru.com"
template = "Weekly Summary"


sresponse = sailthru.send(template, email, vars)
p sresponse


