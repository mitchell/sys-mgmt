require 'call_response'
@gem_upgrade = CallResponse.new("\nUpgrading gems", 'Done upgrading gems',
                                'sudo gem update')
@npm_upgrade = CallResponse.new("\nUpgrading npm packages",
                                'Done upgrading npm packages',
                                'sudo npm upgrade -g')
@brew_upgrade = CallResponse.new("\nUpgrading homebrew packages",
                                 'Done upgrading homebrew packages',
                                 'brew upgrade')
@apt_get_upgrade = CallResponse.new("\nUpgrading apt packages",
                                    'Done upgrading apt packages',
                                    'sudo apt-get upgrade')

@upgrade_function = lambda do
  @gem_upgrade.run unless `which gem` == ''
  @npm_upgrade.run unless `which npm` == ''
  @apt_get_upgrade.run unless `which apt-get` == ''
  return if `which brew` == ''
  @brew_upgrade.run
end
