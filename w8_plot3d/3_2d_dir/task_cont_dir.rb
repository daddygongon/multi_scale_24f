div =10
dx, dy = [], []
(div+1).times do |i|
  dx << -1.0 + 2.0/div*i
  dy << -1.0 + 2.0/div*i
end

dx.each do |x|
  dy.each do |y|
    p ext = ("%3.2f_%3.2f" % [x, y]).gsub('.','')
    dir = "d_task_#{ext}"
    system "mkdir #{dir}"
    Dir.chdir(dir) do
      string ="#{x} # x-data   
#{y} # y-data    
"
      File.write('input_parameters.txt', string)
      system "ruby ../file_dummy_task.rb > result.txt"
    end
  end
end
