require 'help_menu'
require 'update_function'
require 'upgrade_function'
require 'power_functions'

# rubocop:disable all
def command_switch(choice)
  if choice == '--version' || choice == '-v'
    puts "Version #{@version}"
  elsif choice == 'update'
    update_function
  elsif choice == 'upgrade'
    upgrade_function
  elsif choice == 'poweroff'
    poweroff_function
  elsif choice == 'reboot'
    reboot_function
  elsif choice == 'sleep'
    sleep_function
  elsif choice == '--help' || choice == '-h'
    help_menu
  else
    puts 'welcome to mgmt. please try \'mm -h\' to see the mgmt help menu'
    exit(1)
  end
end
