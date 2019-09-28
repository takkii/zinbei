# frozen_string_literal: true

require 'minitest/autorun'
require 'minitest/reporters'

# Minitest
class TestSearch < Minitest::Test
  def test_search
    a = 'abcdefg'
    assert_nil a.match(/[a][f]/), a =~ /[a][f]/
  end
end
