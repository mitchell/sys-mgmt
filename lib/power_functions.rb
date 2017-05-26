@suspend_function = lambda do
  exec 'sudo shutdown -s now' unless `which launchctl`.empty?
  exec 'sudo systemctl suspend' unless `which systemctl`.empty?
end

@poweroff_function = lambda do
  exec 'sudo systemctl poweroff' unless `which systemctl`.empty?
  exec 'sudo launchctl reboot halt' unless `which launchctl`.empty?
end

@redisplay_function = lambda do
  exec 'sudo systemctl restart lightdm' unless `which systemctl`.empty?
  exec 'sudo launchctl reboot userspace' unless `which launchctl`.empty?
end

@reboot_function = lambda do
  exec 'sudo launchctl reboot' unless `which launchctl`.empty?
  exec 'sudo systemctl reboot' unless `which launchctl`.empty?
end

@lock_function = lambda do
  exec 'light-locker-command -l' unless `which light-locker-command`.empty?
  return if `which launchctl`.empty?
  exec '/System/Library/CoreServices/Menu\ ' \
       'Extras/User.menu/Contents/Resources/CGSession ' \
       '-suspend'
end
