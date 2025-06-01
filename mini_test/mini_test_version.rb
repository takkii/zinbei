# frozen_string_literal: true

require 'date'
require 'minitest/autorun'
require_relative File.join(File.dirname(__FILE__), '../lib/zinbei/version.rb')

# Mini_test file load.
class TestVersion < Minitest::Test
  def test_version
    @standard = Zinbei::VERSION
    zinbei_version = '4.0.0'
    t = Date.today
    build_day = t.strftime('%Y.%m.%d')
    @major = "#{zinbei_version}-#{build_day}".freeze

    refute_equal(@standard, @major)
    assert_operator(@standard, :<, @major)
  end
end
