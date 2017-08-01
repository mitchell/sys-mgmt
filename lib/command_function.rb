# frozen_string_literal: true

def command_function(choice, commands)
  command_found = 0
  commands.each do |command, function|
    if choice == command
      command_found = 1
      function.call
    end
  end
  return unless command_found.zero?
  puts 'welcome to mgmt. please try \'mm help\' to see the mgmt help menu'
  exit(1)
end
