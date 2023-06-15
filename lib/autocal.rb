require 'date'
require 'pycall/import'
include PyCall::Import

Encoding.default_internal = 'UTF-8'
Encoding.default_external = 'UTF-8'

module Auto
  module_function

  def view
    yr = ARGV[1]
    mh = ARGV[2]
    pyimport :calendar
    puts (calendar.month(yr.to_i,mh.to_i))
  end
end

puts ''

__END__
