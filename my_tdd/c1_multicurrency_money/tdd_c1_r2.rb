require 'test/unit'

class Dollar
  attr_reader :amount
  def initialize(amount)
    @amount = amount
  end
  def times(multiplier)
    @amount *= multiplier
  end
end

class TestDollar < Test::Unit::TestCase
  def test_multiplication
    five = Dollar.new(5)
    five.times(2)
    assert_equal 10, five.amount
  end
end
