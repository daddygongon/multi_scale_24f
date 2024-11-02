div =10
dx = []
(div+1).times do |i|
  dx << -1.0 + 2.0/div*i
end

input_way = ARGV[0] || '--option'

dx.each do |x|
  case input_way
  when '--option'
    system "ruby option_dummy_task.rb #{x} 1.0"
  when '--interactive'
    system "echo \"#{x}\n1.0\n\" | ruby interactive_dummy_task.rb"
  when '--file'
    File.write('input_parameters.txt', "#{x}\n1.0\n")
    system "ruby file_dummy_task.rb"
  end
end
