def fib(n)
  if n==0
    return 0
  end
  if n==1
    return 1
  end
end

require './xunit_23'
[[0,0],[1,1]].each do |pair|
  puts assert_equal(pair[0], fib(pair[1]))
end
