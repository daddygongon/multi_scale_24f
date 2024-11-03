require 'scanf'
require 'command_line/global'

all_data, data = [], []
whole_results = ''
Dir.glob('task_*').each do |dir|
  xx,yy = dir.split('_')[-2..-1]
  p [xx.to_f/100.0,yy.to_f/100]
  res = command_line "cat #{dir}/res.txt"
  p res.stdout
  whole_results << res.stdout
end

File.write('results.txt', whole_results)
exit
File.readlines('results.txt').each_with_index do |line,i|
  if i%5==0
    data = []
    all_data<< data
  end
  data << line.scanf("[%f, %f, %f]")[-1]
end

#pp all_data

string =<<"EOS"
# #{Dir.pwd}
with(plots):
l1:=#{all_data}:
listplot3d(l1);

EOS

puts string
