# frozen_string_literal: true

require 'kconv'
require 'test/unit'
require 'himekuri'

Encoding.default_internal = 'UTF-8'

# Test result loads.
module Test
  module_function

  def for_all
    Test::Unit::AutoRunner.run(true, './test')
  end
end

# Filename find loads.
class Filename
  def find
    puts Dir.glob('./test/*.rb')
  end
end

# Unit_Test_Run
class Unit < Filename
  include Test

  def run
    for_all
  end
end

puts ''
puts ' TimeStamp '.center(60, '-').toutf8
puts ''
Unit.new.reiwa_print
puts ''
Unit.new.himekuri_print
puts ''
puts ' TimeStamp '.center(60, '-').toutf8
puts ''
puts ' ./test in filename list...start! '.center(60, '-').toutf8
puts ''
Unit.new.find
puts ''
puts ' ./test in filename list...exit. '.center(60, '-').toutf8
puts ''
puts ''
puts ' Test All Start '.center(60, '-').toutf8
puts ''
Unit.new.run
puts ''
puts ' Test All End '.center(60, '-').toutf8
puts ''

__END__
