# frozen_string_literal: true

require 'call_response'
@npm_update = CallResponse.new "\nUpdating npm repositories",
                               'Done updating npm repositories',
                               'npm update'
@brew_update = CallResponse.new "\nUpdating homebrew casks",
                                'Done updating homebrew casks',
                                'brew update'
@apt_get_update = CallResponse.new "\nUpdating apt repositories",
                                   'Done updating apt repositories',
                                   'sudo apt update'

@update_function = lambda do
  @npm_update.run unless `which npm`.empty?
  @apt_get_update.run unless `which apt`.empty?
  return if `which brew`.empty?
  @brew_update.run
end

@gem_upgrade = CallResponse.new "\nUpgrading gems", 'Done upgrading gems',
                                'sudo gem update'
@npm_upgrade = CallResponse.new "\nUpgrading npm packages",
                                'Done upgrading npm packages',
                                'sudo npm upgrade -g'
@brew_upgrade = CallResponse.new "\nUpgrading homebrew packages",
                                 'Done upgrading homebrew packages',
                                 'brew upgrade'
@apt_get_upgrade = CallResponse.new "\nUpgrading apt packages",
                                    'Done upgrading apt packages',
                                    'sudo apt upgrade'

@upgrade_function = lambda do
  @gem_upgrade.run unless `which gem`.empty?
  @npm_upgrade.run unless `which npm`.empty?
  @apt_get_upgrade.run unless `which apt`.empty?
  return if `which brew`.empty?
  @brew_upgrade.run
end
