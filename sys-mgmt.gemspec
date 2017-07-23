Gem::Specification.new do |s|
  s.name        = 'sys-mgmt'
  s.version     = '0.0.4'
  s.date        = '2017-05-01'
  s.summary     = 'A minimal unix-like-system management program.'
  s.description = 'A program with loads of system administration functions.'
  s.authors     = ['Mitchell Simon']
  s.email       = 'mitchelljfsimon@gmail.com'
  s.files       = ['lib/mgmt.rb', 'lib/command_function.rb', 'lib/help_menu.rb',
                   'lib/call_response.rb', 'lib/power_functions.rb',
                   'lib/serve_function.rb', 'lib/kill_function.rb', 
                   'lib/package_functions.rb']
  s.executables << 'mm'
  s.homepage    = 'https://www.mitchelljfsimon.com'
  s.license     = 'MIT'
end
