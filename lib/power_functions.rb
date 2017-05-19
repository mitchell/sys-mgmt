@suspend_function = lambda do
  exec('sudo shutdown -s now') unless `which launchctl` == ''
  exec('sudo systemctl suspend') unless `which systemctl` == ''
end

@poweroff_function = lambda do
  exec('sudo systemctl poweroff') unless `which systemctl` == ''
  exec('sudo launchctl reboot halt') unless `which launchctl` == ''
end

@redisplay_function = lambda do
  exec('sudo systemctl restart lightdm') unless `which systemctl` == ''
  exec('sudo launchctl reboot userspace') unless `which launchctl` == ''
end

@reboot_function = lambda do
  exec('sudo launchctl reboot') unless `which launchctl` == ''
  exec('sudo systemctl reboot') unless `which launchctl` == ''
end

@lock_function = lambda do
  exec('light-locker-command -l') unless `which light-locker-command` == ''
  return if `which launchctl` == ''
  exec('/System/Library/CoreServices/Menu\ ' \
       'Extras/User.menu/Contents/Resources/CGSession ' \
       '-suspend')
end
