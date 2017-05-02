def npm_update
  puts 'updating npm'
  results_npm = `npm update`
  puts results_npm
  puts "done updating npm\n"
end

def brew_update
  puts 'updating homebrew'
  results_brew = `brew update`
  puts results_brew
  puts "done updating homebrew\n"
end

def update_function
  npm_update unless `which npm` == ''
  return if `which brew` == ''
  brew_update
end
