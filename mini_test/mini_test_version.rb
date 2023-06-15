# frozen_string_literal: true

require 'minitest/autorun'
require_relative File.join(File.dirname(__FILE__), '../lib/zinbei/version.rb')

# Mini_test file load.
class TestVersion < Minitest::Test
  def test_version
    @standard = Zinbei::VERSION
    @major = '2.0.0'

    refute_equal(@standard, @major)
    assert_operator(@standard, :<, @major)
  end
end
