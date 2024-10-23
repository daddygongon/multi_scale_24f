def fib(n)
  return 0  if n==0
  return 1  if n<=2
  return fib(n-1) + fib(n-2)
end

require './xunit_23'
[[0,0],[1,1],[2,1],[3,2],[4,3],[5,5],[6,8],[7,13],[8,21]].each do |pair|
  puts assert_equal(pair[1], fib(pair[0]))
end
