# frozen_string_literal: true

puts ''

Encoding.default_external = 'UTF-8'
Encoding.default_internal = 'UTF-8'

# Or search
module Or
  module_function

  def search
    one = ARGV[1]

    File.open(one) do |f|
      while (str2 = f.gets)
        str = str2.chomp!
        twice = ARGV[2]
        drive = ARGV[3]
        three_act4 = /(#{twice}|#{drive})/o

        begin
          if str =~ three_act4
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
          raise Or
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
