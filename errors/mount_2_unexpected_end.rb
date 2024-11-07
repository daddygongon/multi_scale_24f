require 'test/unit'

class Dollar
  attr_reader :mount
  def initialize(mount)
    @mount = mount
  end
  def times(multiplier)
    @mount *= 2
  # should be 'end' here
end

class TestMoney < Test::Unit::TestCase
  def test_multiplication
    five = Dollar.new(5)
    p five
    assert_equal(5, five.amount)
    five.times(2)
    assert_equal(10, five.amount)
  end
end
