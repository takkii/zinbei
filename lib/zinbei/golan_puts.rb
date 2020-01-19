class golan_puts
  def dream
    begin
	  exec("./exe/kaminarigumo.exe")
    rescue Exception => e
      puts e.backtrace
    end
  end
end
