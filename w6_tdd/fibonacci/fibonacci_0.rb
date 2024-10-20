require 'colorize'
require './xunit_23'

def fib(n)
  if n==0
    return 0
  end
end

puts assert_equal(0, fib(0))

