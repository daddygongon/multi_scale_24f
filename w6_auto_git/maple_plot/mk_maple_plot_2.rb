require 'scanf'

all_data = []
File.readlines('results.txt').each do |line|
  data = line.scanf("[%f, %f, %f]")
  all_data << [data[0], data[-1]]
end

all_data

string =<<"EOS"
with(plots):
l1:=#{all_data}:
listplot(l1, style=pointline, symbolsize=20);

EOS

puts string
