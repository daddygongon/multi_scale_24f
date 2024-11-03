require 'scanf'

all_data, data = [], []
File.readlines('sample_2d_data.txt').each_with_index do |line,i|
  if i%4==0
    data = []
    all_data<< data
  end
  data << line.scanf("[%f, %f, %f]")[-1]
end

# all_data

string =<<"EOS"
# #{Dir.pwd}
with(plots):
l1:=#{all_data}:
listplot3d(l1);

EOS

puts string
