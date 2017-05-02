def help_menu
  puts "mgmt - Unix-like management software. Version DEV 000. \n\n" \
       "usage: mgmt <command> [arguments] \n\n" \
       "example: mgmt update    update all installed package manager's" \
       "repositories \n\n" \
       "commands: \n" \
       "  update    updates all installed package manager's repositories \n\n" \
             "arguments: \n" \
       "  -h, --help       print this menu \n" \
       '  -v, --version    print version of mgmt'
end
