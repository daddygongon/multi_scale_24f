require "scanf"
File.readlines("results.txt")[0..1].each do |line|
  p scan_string = "[%f, %f, %f]"
  p line
  p line.scanf(scan_string)
end
