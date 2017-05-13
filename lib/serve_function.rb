require 'call_response'

def serve_function
  port = if @argv[1] == '-p' || @argv[1] == '--port'
           @argv[2]
         else
           9292
         end
  puts 'starting simple ruby-based webserver'
  exec("ruby -run -e httpd . -p #{port}")
end