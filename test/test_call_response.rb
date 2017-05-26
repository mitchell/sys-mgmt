require 'minitest/autorun'
require 'call_response'

describe CallResponse do
  before do
    @call_response = CallResponse.new 'test start', 'test end', 'true'
  end

  describe 'properties' do
    it 'should equal parameters given' do
      @call_response.start_message.must_equal 'test start'
      @call_response.end_message.must_equal 'test end'
      @call_response.command.must_equal 'true'
    end
  end
end
