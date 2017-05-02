require 'help_menu'
require 'update_function'
require 'upgrade_function'

def command_switch(choice)
  if choice == '--version' || choice == '-v'
    puts "Version #{@version}"
  elsif choice == 'update'
    update_function
  elsif choice == 'upgrade'
    upgrade_function
  else
    help_menu
  end
end
