require 'call_response'
@npm_update = CallResponse.new("\nupdating npm repositories",
                               'done updating npm repositories',
                               'npm update')
@brew_update = CallResponse.new("\nupdating homebrew casks",
                                'done updating homebrew casks',
                                'brew update')
@apt_get_update = CallResponse.new("\nupdating apt repositories",
                                   'done updating apt repositories',
                                   'sudo apt-get update')

@update_function = lambda do
  @npm_update.run unless `which npm` == ''
  @apt_get_update.run unless `which apt-get` == ''
  return if `which brew` == ''
  @brew_update.run
end
