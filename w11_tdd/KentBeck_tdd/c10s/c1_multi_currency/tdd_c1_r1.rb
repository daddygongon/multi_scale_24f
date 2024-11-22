# test_sample.rb
require 'test/unit'

class Dollar
  attr_reader :amount
  def initialize(amount)
    @amount = amount
  end
end

class TestDollar < Test::Unit::TestCase
  def test_multiplication
    five = Dollar.new(5)
    assert_equal(5, five.amount)
  end
end

