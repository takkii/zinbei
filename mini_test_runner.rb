# frozen_string_literal: true

require 'kconv'
require 'minitest'
require 'minitest/autorun'
require 'minitest/unit'
require 'minitest/reporters'
require 'himekuri'
# use Test Case comment out
# require 'tanraku'

Encoding.default_internal = 'UTF-8'

# Ruby test file.
class MiniTestOne
  def mini_test
    Dir[File.join(__dir__, 'mini_test', '*.rb')].each do |file|
      require file
    end
  end
end

# Ruby file find
class MiniFilename
  def mini_find
    puts Dir.glob('./mini_test/*.rb')
  end
end

# refinement use module
module Load
  refine MiniFilename do
    def done
      mini_find
    end
  end
end

# refinement use module
module LoadR
  refine MiniTestOne do
    def ddone
      mini_test
    end
  end
end

puts ''
puts ' TimeStamp '.center(60, '-').toutf8
puts ''
Object.new.reiwa_print
puts ''
Object.new.himekuri_print
puts ''
puts ' TimeStamp '.center(60, '-').toutf8
puts ''
puts ' current_directory '.center(60, '-').toutf8
puts ''
puts Dir.getwd
puts ''
puts ' current_directory '.center(60, '-').toutf8
puts ''
puts ''
puts ' mini_test in filename list...start '.center(60, '-').toutf8
puts ''
using Load
MiniFilename.new.mini_find
puts ''
puts ' mini_test in filename list...exit '.center(60, '-').toutf8
puts ''
using LoadR
MiniTestOne.new.mini_test
puts ''

__END__
