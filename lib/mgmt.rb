def main
  require 'command_switch'
  require 'help_menu'

  choice = @argv[0]
  command_switch(choice)
end
