require 'call_response'
@npm_update = CallResponse.new("\nUpdating npm repositories",
                               'Done updating npm repositories',
                               'npm update')
@brew_update = CallResponse.new("\nUpdating homebrew casks",
                                'Done updating homebrew casks',
                                'brew update')
@apt_get_update = CallResponse.new("\nUpdating apt repositories",
                                   'Done updating apt repositories',
                                   'sudo apt-get update')

@update_function = lambda do
  @npm_update.run unless `which npm` == ''
  @apt_get_update.run unless `which apt-get` == ''
  return if `which brew` == ''
  @brew_update.run
end
