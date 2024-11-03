require 'fileutils'
div = 4

dx, dy = [], []
(div+1).times do |i|
  dx << "%+3.2f" % (-1.0 + 2.0/div*i)
  dy << "%+3.2f" % (-1.0 + 2.0/div*i)
end

p dx
p dy

dx.each do |x|
  dy.each do |y|
    puts dir = ['task',x.gsub('.',''),y.gsub('.','')].join('_')
    FileUtils.mkdir(dir,verbose: true)
    Dir.chdir(dir) do 
      File.write('input_parameters.txt', "#{x}\n#{y}\n")
      system "ruby ../file_dummy_task.rb > res.txt"
    end
  end
end

