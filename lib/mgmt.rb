def main
  require 'command_switch'

  @version = 'DEV-0.0.4'

  choice = @argv[0]
  command_switch(choice)
end
