# rubocop:disable Metrics/BlockLength
@help_menu = lambda do
  puts "mgmt - a cross platform, minimal, unix-like-system management\n" \
       "       software. version #{@version}.\n\n" \
       "usage: mm [command] [argument] \n\n" \
       "example:\n" \
       "  mm update           update all installed package manager's\n" \
       "                      repositories\n" \
       "  mm upgrade          upgrade all installed package manager's\n" \
       "                      packages repositories\n" \
       '  mm serve -p 8080    serve the current working directory to port ' \
       "8080\n\n" \
       "commands:\n" \
       '  update, up     updates all installed package manager\'s ' \
       "repositories\n" \
       "  upgrade, ug    upgrades all installed package manager's packages\n" \
       "  off, o         makes the system poweroff\n" \
       "  reboot, re     makes the system reboot\n" \
       '  regui, rg      restart the userspace on macOS, restart DM on ' \
       "Linux\n" \
       "  suspend, ss    puts the system in a suspended state\n" \
       "  lock, lk       locks the system\n" \
       "  serve, sv      serves the current direction on localhost:9292\n" \
       "  help, h        shows this menu\n\n" \
       "arguments:\n" \
       "  -h, --help       print this menu\n" \
       "  -v, --version    print version of mgmt\n" \
       '  -p, --port       (only for serve command) choose what port to host on'
end
