dev_x = [0, 0.2, 0.4, 0.6, 0.8, 1.0]
div =10
dev_x = []
(div+1).times do |i|
  dev_x << -1.0 + 2.0/div*i
end

input_way = ARGV[0] || 'option'

dev_x.each do |x|
  case input_way
  when '--option'
    system "ruby option_dummy_task.rb #{x} 1.0"
  when '--interactive'
    File.write('input_parameters.txt', "#{x}\n1.0\n")
    system "cat input_parameters.txt | ruby interactive_dummy_task.rb"
  when '--file'
    File.write('input_parameters.txt', "#{x}\n1.0\n")
    system "ruby file_dummy_task.rb"
  end
end
