# simple call and response style command class
class CallResponse
  def initialize(start_message, end_message, command)
    @start_message = start_message
    @end_message = end_message
    @command = command
  end

  def run
    puts @start_message
    puts `#{@command}`
    puts @end_message
  end
end
