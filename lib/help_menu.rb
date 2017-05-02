# rubocop:disable Metrics/MethodLength
def help_menu
  puts "mgmt - a cross platform, minimal, unix-like system management\n" \
       "       software. Version #{@version}.\n\n" \
       "usage: mm <command | argument> \n\n" \
       "example:\n" \
       "  mm update     update all installed package manager's repositories" \
       "\n" \
       "  mm upgrade    upgrade all installed package manager's packages " \
       "repositories\n\n" \
       "commands:\n" \
       "  update      updates all installed package manager's repositories\n" \
       "  upgrade     upgrades all installed package manager's packages\n" \
       "  poweroff    makes the system poweroff\n" \
       "  reboot      makes the system reboot\n" \
       "  sleep       puts the system to sleep\n\n" \
       "arguments:\n" \
       "  -h, --help       print this menu\n" \
       '  -v, --version    print version of mgmt'
end
