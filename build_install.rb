#!/usr/bin/env ruby

response = `gem build sys-mgmt.gemspec`
puts response

response = `gem install ./sys-mgmt-0.0.3.gem`
puts response
