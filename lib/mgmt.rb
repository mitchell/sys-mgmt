require 'help_menu'
require 'package_functions'
require 'power_functions'
require 'serve_function'
require 'command_function'
require 'kill_function'

# rubocop:disable Metrics/MethodLength
def main
  @version = 'DEV-0.0.5'
  version_function = -> { puts @version }
  commands = { 'update' => @update_function, 'up' => @update_function,
               'upgrade' => @upgrade_function, 'ug' => @upgrade_function,
               'off' => @poweroff_function, 'o' => @poweroff_function,
               'reboot' => @reboot_function, 're' => @reboot_function,
               'suspend' => @suspend_function, 'ss' => @suspend_function,
               'lock' => @lock_function, 'lk' => @lock_function,
               'regui' => @redisplay_function, 'rg' => @redisplay_function,
               'serve' => @serve_function, 'sv' => @serve_function,
               'kill' => @kill_function, 'k' => @kill_function,
               '--version' => version_function, '-v' => version_function,
               '--help' => @help_menu, '-h' => @help_menu,
               'help' => @help_menu, 'h' => @help_menu }

  choice = @argv[0]
  command_function choice, commands
end
