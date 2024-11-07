require 'scanf'

data = []
Dir.glob("task_*/result.txt").each do |file|
  tmp = File.readlines(file)[0].scanf("[%f, %f, %f]")
  data << [tmp[0], tmp[2]]
end

puts "with(plots):
AA:=#{data};
pointplot(AA);
"
