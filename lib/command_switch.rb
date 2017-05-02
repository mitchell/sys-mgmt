require 'help_menu'
require 'update_function'

# rubocop:disable Metrics/MethodLength
def command_switch(choice)
  case choice
  when 'update'
    update_function
  when '--version'
    puts 'Version DEV 000'
  when '-v'
    puts 'Version DEV 000'
  when '--help'
    help_menu
  when '-h'
    help_menu
  else
    help_menu
    exit(1)
  end
end
