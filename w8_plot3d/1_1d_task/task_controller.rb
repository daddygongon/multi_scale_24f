div =10
dx = []
(div+1).times do |i|
  dx << -1.0 + 2.0/div*i
end

dx.each do |x|
  string =
"#{x} # x-data
1.0 # y-data
"
    File.write('input_parameters.txt', string)
    system "ruby file_dummy_task.rb"
end