def main
  require 'command_switch'
  require 'help_menu'

  @version = 'DEV-0.0.3'

  choice = @argv[0]
  command_switch(choice)
end
