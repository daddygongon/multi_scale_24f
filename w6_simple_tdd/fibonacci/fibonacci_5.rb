def fib(num)
  if num <= 1
    return num
  else
    return fib(num-1)+fib(num-2)
  end
end

[[0,0],[1,1],[2,1]].each do |index, val|
  p fib(index) == val
end
