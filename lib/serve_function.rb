require 'call_response'

def serve_function
  port = if @argv[1] == '-p' || @argv[1] == '--port'
           @argv[2]
         else
           9292
         end
  ruby_serve = CallResponse.new("\nstarting minimal ruby web/file server",
                                'shutdown minimal server',
                                "ruby -run -ehttpd . -p#{port}")
  ruby_serve.run
end
