# frozen_string_literal: true

# simple call and response style command class
class CallResponse
  attr_reader :start_message, :end_message, :command
  def initialize(start_message, end_message, command)
    @start_message = start_message
    @end_message = end_message
    @command = command
  end

  def run
    puts @start_message
    system @command
    puts @end_message
  end
end
