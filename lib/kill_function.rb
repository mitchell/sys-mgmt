@kill_function = lambda do
  if @argv[1] == '-i' || @argv[1] == '--id'
    system "kill #{@argv[2]}"
  else
    puts 'Processes matching keyword(s): '
    system "pgrep -fa #{@argv[1]}"
    print 'What process ID would you like to kill? '
    kpid = STDIN.gets.chomp
    system "kill #{kpid}" unless kpid.empty?
  end
end
