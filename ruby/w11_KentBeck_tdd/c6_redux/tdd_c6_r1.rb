# test_sample.rb
require 'test/unit'

class Money
  attr_reader :amount
  def equals(object)
    return @amount ==  object.amount
  end
end
class Dollar < Money
  def initialize(amount)
    @amount = amount
  end
  def times(multiplier)
    #    @amount = @amount * multiplier
    Dollar.new(@amount * multiplier)
  end
end

class Franc
  attr_reader :amount
  def initialize(amount)
    @amount = amount
  end
  def times(multiplier)
    #    @amount = @amount * multiplier
    Franc.new(@amount * multiplier)
  end
  def equals(object)
    return @amount ==  object.amount
  end
end

class TestDollar < Test::Unit::TestCase
  def test_Franc_multiplication
    five = Franc.new(5)
    assert_true Franc.new(10).equals five.times(2)
    assert_true Franc.new(15).equals five.times(3)
  end

  def test_equality
    assert_true Dollar.new(5).equals Dollar.new(5)
    assert_false Dollar.new(5).equals Dollar.new(6)
  end

  def test_multiplication
    five = Dollar.new(5)
    assert_true Dollar.new(10).equals five.times(2)
    assert_true Dollar.new(15).equals five.times(3)
  end
end

