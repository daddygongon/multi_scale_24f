def calc(x,y)
  x*x+x*y+y*y
end

x = (ARGV[0] || '1').to_f
y = (ARGV[1] || '1').to_f

result = calc(x,y)

sleep(2)
p [x,y,result]
