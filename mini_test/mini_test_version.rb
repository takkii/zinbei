# frozen_string_literal: true

require 'minitest/autorun'
require 'minitest/reporters'
require_relative File.join(File.dirname(__FILE__), '../lib/zinbei/version.rb')

# Mini_test file load.
class TestVersion < Minitest::Test
  def test_version
    assert_equal Zinbei::VERSION, '1.5.2'
  end
end
