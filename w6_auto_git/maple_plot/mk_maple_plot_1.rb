require 'scanf'

all_data = []
File.readlines('results.txt').each do |line|
  data = line.scanf("[%f, %f, %f]")
  all_data << [data[0], data[-1]]
end

pp all_data
