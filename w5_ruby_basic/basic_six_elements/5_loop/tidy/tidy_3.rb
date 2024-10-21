Dir.glob("*~").each do |file|
  p file
  p comm = "rm #{file}"
  system comm
end
