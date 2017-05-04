def suspend_function
  `sudo shutdown -s now` unless `which launchctl` == ''
  `sudo systemctl suspend` unless `which systemctl` == ''
end

def poweroff_function
  `sudo systemctl poweroff` unless `which systemctl` == ''
  `sudo launchctl reboot halt` unless `which launchctl` == ''
end

def redisplay_function
  `sudo systemctl restart lightdm` unless `which systemctl` == ''
  `sudo launchctl reboot userspace` unless `which launchctl` == ''
end

def reboot_function
  `sudo launchctl reboot` unless `which launchctl` == ''
  `sudo systemctl reboot` unless `which launchctl` == ''
end
