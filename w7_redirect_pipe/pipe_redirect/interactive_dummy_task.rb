def calc(x,y)
  x*x+x*y+y*y
end

print "x? "
x = gets.chomp.to_f
print "y? "
y = gets.chomp.to_f

result = calc(x, y)

sleep(0)
p [x,y,result]
