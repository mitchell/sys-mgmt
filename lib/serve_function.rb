# frozen_string_literal: true

@serve_function = lambda do
  port = if @argv[1] == '-p' || @argv[1] == '--port'
           @argv[2]
         else
           9292
         end
  puts 'starting simple ruby-based webserver'
  exec "ruby -run -e httpd . -p #{port}"
end
