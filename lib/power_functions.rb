def sleep_function
  exec('sudo shutdown -s now') unless `which launchctl` == ''
  exec('sudo systemctl sleep') unless `which systemctl` == ''
end

def poweroff_function
  `sudo systemctl poweroff` unless `which systemctl` == ''
  `sudo launchctl reboot halt` unless `which launchctl` == ''
end

def reboot_function
  `sudo launchctl reboot` unless `which launchctl` == ''
  `sudo systemctl reboot` unless `which launchctl` == ''
end
