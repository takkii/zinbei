# frozen_string_literal: true

require 'test/unit'
require File.join(File.dirname(__FILE__), '../lib/zinbei/version')

# Unit-test start!
class TestVersion < Test::Unit::TestCase
  def setup
    @versions = Zinbei::VERSION
    @version = '1.5.8'
  end

  def test_new
    assert_equal @version, @versions
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
