def calc(x,y)
  x*x+x*y+y*y
end

x = gets.chomp.to_f
y = gets.chomp.to_f

result = calc(x, y)

sleep(2)
p [x,y,result]
