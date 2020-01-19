class golan_day
  def hope
    begin
	  exec("./exe/poisionspider.exe")
    rescue Exception => ex
      puts ex.backtrace
    end
  end
end
