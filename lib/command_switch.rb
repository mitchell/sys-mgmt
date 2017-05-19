require 'help_menu'
require 'update_function'
require 'upgrade_function'
require 'power_functions'
require 'serve_function'

@version_function = -> { puts @version }
@commands = { 'update' => @update_function, 'up' => @update_function,
              'upgrade' => @upgrade_function, 'ug' => @upgrade_function,
              'off' => @poweroff_function, 'o' => @poweroff_function,
              'reboot' => @reboot_function, 're' => @reboot_function,
              'suspend' => @suspend_function, 'ss' => @suspend_function,
              'lock' => @lock_function, 'lk' => @lock_function,
              'regui' => @redisplay_function, 'rg' => @redisplay_function,
              'serve' => @serve_function, 'sv' => @serve_function,
              '--version' => @version_function, '-v' => @version_function,
              '--help' => @help_menu, '-h' => @help_menu,
              'help' => @help_menu, 'h' => @help_menu }

def command_switch(choice)
  command_found = 0
  @commands.each do |command, function|
    if choice == command
      command_found = 1
      function.call
    end
  end
  return unless command_found.zero?
  puts 'welcome to mgmt. please try \'mm help\' to see the mgmt help menu'
  exit(1)
end
