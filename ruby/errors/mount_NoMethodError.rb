require 'test/unit'

class Dollar
  attr_reader :mount
  def initialize(mount)
    @mount = mount
  end
  def times(multiplier)
    @mount *= 2
  end
end

class TestMoney < Test::Unit::TestCase
  def test_multiplication
    five = Dollar.new(5) # new instance
    p five
    assert_equal(5, five.amount)
    five.times(2)
    assert_equal(10, five.amount)
    # assert_equal(expected, actual)
    # check equal? expected == actual
  end
end
