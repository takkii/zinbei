# frozen_string_literal: true

require "#{File.dirname(__FILE__)}/req/mini-test"

# Ruby file find
class MiniTestFile
  attr_reader :mini_test, :mini_unit

  # Encoding Settings.
  def encoding_style
    Encoding.default_internal = 'UTF-8'
    Encoding.default_external = 'UTF-8'
  end

  def initialize
    encoding_style
    @mini_test = Mini(true, '/GitHub/zinbei/mini_test')
    @mini_unit = Mini(true, '/GitHub/zinbei/mini_unit')
  end

  def remove
    remove_instance_variable(:@mini_test)
    remove_instance_variable(:@mini_unit)
  end
end

begin
  MiniTestFile.new.remove
rescue LoadError => e
  puts e.backtrace.tanraku_exit
ensure
  GC.compact
end

__END__
