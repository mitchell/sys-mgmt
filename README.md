## mgmt - a minimal, cross-platform, unix-like-system management program
The title says a lot really. This program is designed to detect which programs
are affiliated with the unix-like system, whether it be Debian or macOS. There
are various shortcuts to common unix-like commands, such as update and upgrade
(for package managers), another is poweroff or reboot. So far it is still
heavily under development

```
mgmt - a cross platform, minimal, unix-like-system management
       software. version DEV-0.0.4.

usage: mm [command] [argument] 

example:
  mm update           update all installed package manager's
                      repositories
  mm upgrade          upgrade all installed package manager's
                      packages repositories
  mm serve -p 8080    serve the current working directory to port 8080

commands:
  update, up     updates all installed package manager's repositories
  upgrade, ug    upgrades all installed package manager's packages
  off, o         makes the system poweroff
  reboot, re     makes the system reboot
  regui, rg      restart the userspace on macOS, restart DM on Linux
  suspend, ss    puts the system in a suspended state
  lock, lk       locks the system
  serve, sv      serves the current directory on localhost:9292
  help, h        shows this menu

arguments:
  -h, --help       print this menu
  -v, --version    print version of mgmt
  -p, --port       (only for serve command) choose what port to host on
```
