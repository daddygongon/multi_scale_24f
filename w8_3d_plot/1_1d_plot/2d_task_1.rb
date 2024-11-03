div =10
dx, dy = [], []
(div+1).times do |i|
  dx << -1.0 + 2.0/div*i
  dy << -1.0 + 2.0/div*i
end

dx.each do |x|
  dy.each do |y|
    File.write('input_parameters.txt', "#{x}\n#{y}\n")
    system "ruby file_dummy_task.rb"
  end
end

