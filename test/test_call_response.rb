require 'minitest/autorun'
require 'call_response'

describe CallResponse do
  before do
    @call_response = CallResponse.new('test start', 'test end', 'true')
  end

  describe 'properties' do
    it 'should equal parameters given' do
      assert_equal 'test start', @call_response.start_message
      assert_equal 'test end', @call_response.end_message
      assert_equal 'true', @call_response.command
    end
  end
end
