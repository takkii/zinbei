require 'date'
require 'pycall/import'
include PyCall::Import

module Calendar
  module_function

  def view
    d = Date.today
    pyimport :calendar
    puts (calendar.month(d.year,d.month))
  end
end

puts ''

__END__
