# frozen_string_literal: true

Encoding.default_internal = 'UTF-8'

class Golan
	def exefile
		begin
			exec("./kaminarigumo.exe")
		rescue Exception => e
			puts e.backtrace
		end
	end
end

Golan.new.exefile