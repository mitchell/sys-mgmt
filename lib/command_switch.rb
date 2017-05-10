require 'help_menu'
require 'update_function'
require 'upgrade_function'
require 'power_functions'
require 'serve_function'

# rubocop:disable all
def command_switch(choice)
  if choice == 'update' || choice == 'up'
    update_function
  elsif choice == 'upgrade' || choice == 'ug'
    upgrade_function
  elsif choice == 'off' || choice == 'o'
    poweroff_function
  elsif choice == 'reboot' || choice == 're'
    reboot_function
  elsif choice == 'suspend' || choice == 'ss'
    suspend_function
  elsif choice == 'regui' || choice == 'rg'
    redisplay_function
  elsif choice == 'serve' || choice == 'sv'
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
