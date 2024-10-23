dev_x = [0, 0.2, 0.4, 0.6, 0.8, 1.0]
div =10
dev_x = []
(div+1).times do |i|
  dev_x << -1.0 + 2.0/div*i
end
dev_x.each do |x|
  #  system "ruby dummy_option.rb #{x} 1.0"
  File.write('input_parameters.txt', "#{x}\n1\n")
  system "cat input_parameters.txt"
  #  system "cat input_parameters.txt | ruby dummy_interactive.rb"
  system "ruby dummy_file.rb"
end
