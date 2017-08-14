# frozen_string_literal: true

@update_function = lambda do
  unless `which npm`.empty?
    puts 'Updating npm respositories'
    system 'npm update'
  end
  unless `which apt`.empty?
    puts 'Updating apt repositories'
    system 'sudo apt update'
  end
  return if `which brew`.empty?
  puts 'Updating homebrew casks'
  system 'brew update'
end

@upgrade_function = lambda do
  unless `which gem`.empty?
    puts 'Upgrading gems'
    system '/home/m/.rbenv/shims/gem update'
  end
  unless `which npm`.empty?
    puts 'Upgrading npm packages'
    system 'sudo npm -g upgrade'
  end
  unless `which apt`.empty?
    puts 'Upgrading apt packages'
    system 'sudo apt upgrade'
  end
  return if `which brew`.empty?
  puts 'Upgrading brew packages'
  system 'brew upgrade'
end
