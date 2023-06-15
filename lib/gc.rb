# frozen_string_literal: true

Encoding.default_external = "UTF-8"
Encoding.default_internal = "UTF-8"

# GC start message
module Star
  module_function
  
  def search
    puts GC.stat
  end
end

puts ''

__END__
