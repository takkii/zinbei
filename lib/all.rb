# frozen_string_literal: true

Encoding.default_external = 'UTF-8'
Encoding.default_internal = 'UTF-8'

# All search loads.
module All
  module_function

  def search
    one = ARGV[1]

    File.open(one) do |f|
      while (str2 = f.gets)
        str = str2.chomp!
        twice = ARGV[2]
        three_act = /#{twice}/o
        ext = 'else文には到達しないはずです!'

        begin
          str =~ three_act ? printf("%2d : %s\n", f.lineno, str) : ext
        rescue Timeout::Error
          exit!
        end
      end

      if f.eof?
        puts ''
      elsif !f.eof
        begin
          raise All
        rescue StandardError => ee
          puts ee.backtrace
          puts ee.backtrace_locations
        end
      end
    end
  end
end

puts ''

GC.start

__END__
