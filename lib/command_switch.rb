require 'help_menu'
require 'update_function'

# rubocop:disable Metrics/MethodLength
def command_switch(choice)
  case choice
  when 'update'
    update_function
  when '--version'
    puts "Version #{@version}"
  when '-v'
    puts "Version #{@version}"
  when '--help'
    help_menu
  when '-h'
    help_menu
  else
    help_menu
    exit(1)
  end
end
