begin
  exec("./exe/poisionspider.exe")
rescue Exception => ex
  puts ex.backtrace
end
