begin
  exec("./exe/poisonspider.exe")
rescue Exception => ex
  puts ex.backtrace
end
