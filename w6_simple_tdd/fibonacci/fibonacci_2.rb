# frozen_string_literal: true

def fib2(num)
  return 0 if num.zero?
  return 1 if num <= 2
end

require './xunit_23'
[[0, 0], [1, 1], [2, 1]].each do |pair|
  puts assert_equal(pair[1], fib(pair[0]))
end
