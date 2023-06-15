# frozen_string_literal: true

lib = File.expand_path('txt', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

puts ''

require 'timeout'

Encoding.default_external = 'UTF-8'
Encoding.default_internal = 'UTF-8'

# Hyakunin ishu search text
module Hyaku
  module_function

  def view
    one = "#{File.dirname(__FILE__)}/txt/hyakunin.txt"

    open(one) do |f|
      while (str2 = f.gets)
        str = str2.chomp!
        twice = ARGV[1]
        three_act = /#{twice}/o

        begin
          if str =~ three_act
            printf('%2d : %s', f.lineno, str)
            puts ''
          end
        rescue Timeout::Error
          exit!
        end
      end

      if f.eof?
        puts ''
      elsif !f.eof
        begin
          raise Hyaku
        rescue StandardError => ee
          puts ee.backtrace
          puts ee.backtrace_locations
          exit!
        end
      end
    end
  end
end

puts ''

GC.start

__END__
