div =10
dx = []
(div+1).times do |i|
  dx << -1.0 + 2.0/div*i
end

system "echo "" > results.txt"
dx.each do |x|
  File.write('input_parameters.txt', "#{x}\n1.0\n")
  system "ruby file_dummy_task.rb >> results.txt"
end
system "ruby mk_maple_plot.rb"
