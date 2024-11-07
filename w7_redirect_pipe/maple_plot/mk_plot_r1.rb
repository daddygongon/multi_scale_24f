require "scanf"

results = []
File.readlines("results.txt").each do |line|
  data = line.scanf("[%f,%f,%f]")
  results << [data[0], data[2]]
end

pp results
