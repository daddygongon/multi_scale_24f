def fib(num)
  if num <= 1
    return num
  else
    return fib(num-1)+fib(num-2)
  end
end

p fib(0) == 0
p fib(1) == 1
p fib(2) == 1
