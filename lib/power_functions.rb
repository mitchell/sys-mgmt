def suspend_function
  exec('sudo shutdown -s now') unless `which launchctl` == ''
  exec('sudo systemctl suspend') unless `which systemctl` == ''
end

def poweroff_function
  exec('sudo systemctl poweroff') unless `which systemctl` == ''
  exec('sudo launchctl reboot halt') unless `which launchctl` == ''
end

def redisplay_function
  exec('sudo systemctl restart lightdm') unless `which systemctl` == ''
  exec('sudo launchctl reboot userspace') unless `which launchctl` == ''
end

def reboot_function
  exec('sudo launchctl reboot') unless `which launchctl` == ''
  exec('sudo systemctl reboot') unless `which launchctl` == ''
end
