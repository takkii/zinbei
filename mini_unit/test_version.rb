require 'minitest/autorun'
require 'minitest/unit'
require File.join(File.dirname(__FILE__), '../lib/zinbei/version')

# Unit-test start!
class TestVersion < Minitest::Test
  def setup
    @versions = Zinbei::VERSION
    zinbei_version = '4.0.0'
    t = Date.today
    build_day = t.strftime('%Y.%m.%d')
    @version = "#{zinbei_version}-#{build_day}".freeze
  end

  def test_new
    refute_equal(@versions, @version)
    assert_operator(@versions, :<, @version)
  end

  def test_version_should_be_string
    assert_kind_of String, @version
    assert_instance_of String, @version
  end

  def test_version_should_be_string2
    assert_kind_of String, @versions
    assert_instance_of String, @versions
  end

  def test_nil_variable
    # assert_nil
  end

  def test_match
    # assert_match
  end

  def teardown
    # database network test add.
  end
end
