def calc(x,y)
  x*x+x*y+y*y
end

lines = File.readlines("input_parameters.txt")
x = lines[0].chomp.to_f
y = lines[1].chomp.to_f

result = calc(x,y)

sleep(2)
p [x,y,result]
