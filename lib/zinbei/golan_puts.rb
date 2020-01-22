begin
  exec("./exe/kaminarigumo.exe")
rescue Exception => ex
  puts ex.backtrace
end