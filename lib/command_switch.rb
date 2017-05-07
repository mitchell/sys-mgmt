require 'help_menu'
require 'update_function'
require 'upgrade_function'
require 'power_functions'
require 'serve_function'

# rubocop:disable all
def command_switch(choice)
  if choice == 'update'
    update_function
  elsif choice == 'upgrade'
    upgrade_function
  elsif choice == 'off'
    poweroff_function
  elsif choice == 'reboot'
    reboot_function
  elsif choice == 'suspend'
    suspend_function
  elsif choice == 'regui'
    redisplay_function
  elsif choice == 'serve'
    serve_function
  elsif choice == '--version' || choice == '-v'
    puts @version
  elsif choice == '--help' || choice == '-h' || choice == 'help' || choice == 'h'
    help_menu
  else
    puts 'welcome to mgmt. please try \'mm help\' to see the mgmt help menu'
    exit(1)
  end
end
