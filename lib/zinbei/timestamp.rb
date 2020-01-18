# frozen_string_literal: true

lib = File.expand_path('exe', __dir__)
$LOAD_PATH.unshift(exe) unless $LOAD_PATH.include?(exe)

Encoding.default_internal = 'UTF-8'

class Golan
	def exefile
		begin
			exec("kaminarigumo.exe")
		rescue Exception => e
			puts e.backtrace
		end
	end
end

Golan.new.exefile