require 'call_response'
@gem_upgrade = CallResponse.new("\nupgrading gems", 'done upgrading gems',
                                'sudo gem update')
@npm_upgrade = CallResponse.new("\nupgrading npm packages",
                                'done upgrading npm packages',
                                'sudo npm upgrade -g')
@brew_upgrade = CallResponse.new("\nupgrading homebrew packages",
                                 'done upgrading homebrew packages',
                                 'brew upgrade')
@apt_get_upgrade = CallResponse.new("\nupgrading apt packages",
                                    'done upgrading apt packages',
                                    'sudo apt-get upgrade')

def upgrade_function
  @gem_upgrade.run unless `which gem` == ''
  @npm_upgrade.run unless `which npm` == ''
  @apt_get_upgrade.run unless `which apt-get` == ''
  return if `which brew` == ''
  @brew_upgrade.run
end
