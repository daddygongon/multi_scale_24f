# frozen_string_literal: true

def fib(n)
  return fib(n-2) + fib(n-1) if n>=2
  return n
end

def fib(n)
  case n
  when 0, 1
    return n
  else
    return fib(n-2) + fib(n-1)
  end
end

require './xunit_23'
[[0,0],[1,1],[2,1],[3,2],[4,3],
[5,5],[6,8],[7,13],[8,21]].each do |index, expected|
  puts assert_equal(expected, fib(index))
end
