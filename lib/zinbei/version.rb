# frozen_string_literal: true

require 'date'

begin
# zinbei_version = x.x.x-xxxx.xx.xx
module Zinbei
  zinbei_version = '3.0.0'
  t = Date.today
  build_day = t.strftime('%Y.%m.%d')
  VERSION = "#{zinbei_version}-#{build_day}".freeze
  #VERSION = "#{zinbei_version}"
end
rescue StandardError => e
  puts e.backtrace
ensure
  GC.compact
end

__END__
