# frozen_string_literal: true

puts ''

Encoding.default_internal = 'UTF-8'
Encoding.default_external = 'UTF-8'

Dir.mkdir('log', perm = 0o777) unless FileTest.exist?('log')

# match search loads.
module Mat
  module_function

  def search
    one = ARGV[1]
    File.open(one) do |f|
      while (str2 = f.gets)
        str = str2.chomp!
        twice = ARGV[2]
        three_act = /#{twice}/o

        begin
          File.open('log/output.txt', 'a:utf-8', perm = 0o777) do |fi|
            if str.match(three_act) || {}[:match]
              fi.puts(str)
              printf('%2d : %s', f.lineno, str)
              puts ''
            end
          end
        rescue Timeout::Error
          exit!
        end
      end

      if f.eof?
        puts ''
      elsif !f.eof
        begin
          raise All
        rescue StandardError => e
          puts e.backtrace
          puts e.backtrace_locations
        end
      end
    end
  end
end

puts ''

GC.start

__END__