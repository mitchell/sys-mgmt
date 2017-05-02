Gem::Specification.new do |s|
  s.name        = 'sys-mgmt'
  s.version     = '0.0.3'
  s.date        = '2017-05-01'
  s.summary     = 'Hola!'
  s.description = 'A simple hello world gem'
  s.authors     = ['Mitchell Simon']
  s.email       = 'mitchelljfsimon@gmail.com'
  s.files       = ['lib/mgmt.rb', 'lib/command_switch.rb', 'lib/help_menu.rb',
                   'lib/update_function.rb', 'lib/call_response.rb',
                   'lib/upgrade_function.rb', 'lib/power_functions.rb']
  s.executables << 'mm'
  s.homepage    = 'https://www.mitchelljfsimon.com'
  s.license     = 'MIT'
end
