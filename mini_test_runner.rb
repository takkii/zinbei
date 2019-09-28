# frozen_string_literal: true

require 'kconv'
require 'minitest'
require 'minitest/autorun'
require 'minitest/unit'
require 'minitest/reporters'
# use Test Case comment out
# require 'tanraku'

Encoding.default_internal = 'UTF-8'

# Ruby test file.
module MiniTestOne
  module_function

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

# Top Level class super class mix-in.
class Load < MiniFilename
  include MiniTestOne

  def done
    mini_test
  end
end

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
Load.new.mini_find
puts ''
puts ' mini_test in filename list...exit '.center(60, '-').toutf8
puts ''
Load.new.done

__END__
