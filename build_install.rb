#!/usr/bin/env ruby

response = `gem build mgmt.gemspec`
puts response

response = `gem install ./mgmt-0.0.2.gem`
puts response
