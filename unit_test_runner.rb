# frozen_string_literal: true

require 'test/unit'
require 'himekuri'

# Encoding Setting.
Encoding.default_internal = 'UTF-8'
Encoding.default_external = 'UTF-8'

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

# Super Class
class One < Filename
  include Test

  def two
    for_all
  end
end

# Ouutput test result.
puts ''
puts ' TimeStamp '.center(60, '-')
puts ''
Object.new.reiwa_print
puts ''
Object.new.himekuri_print
puts ''
puts ' TimeStamp '.center(60, '-')
puts ''
puts ''
puts '[ ミニテストファイル読み込み ]'
One.new.find
puts ''
puts ' ./test in filename list...exit. '.center(60, '-')
puts ''
puts ''
puts ' Test All Start '.center(60, '-')
puts ''
One.new.two
puts ''
puts ' Test All End '.center(60, '-')
puts ''

__END__
