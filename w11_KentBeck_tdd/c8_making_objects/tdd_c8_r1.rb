# test_sample.rb
require 'test/unit'

class Money
  attr_reader :amount
  def ==(object) #equals(object)
    return @amount ==  object.amount &&
           self.class == object.class
  end
  def dollar(amount)
    Dollar.new(amount)
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

class Franc < Money
  def initialize(amount)
    @amount = amount
  end
  def times(multiplier)
    #    @amount = @amount * multiplier
    Franc.new(@amount * multiplier)
  end
end

class TestDollar < Test::Unit::TestCase
  def test_Franc_multiplication
    five = Franc.new(5)
    assert_true Franc.new(10) == five.times(2)
    assert_true Franc.new(15) == five.times(3)
  end

  def test_equality
    assert_true Dollar.new(5) == Dollar.new(5)
    assert_false Dollar.new(5) == Dollar.new(6)
    assert_true Franc.new(5) == Franc.new(5)
    assert_false Franc.new(5) == Franc.new(6)
    assert_false Franc.new(5) == Dollar.new(5)
  end

  def test_multiplication
    five = Money.new.dollar(5) # <= Dollar.new(5)
    assert_true Dollar.new(10) == five.times(2)
    assert_true Dollar.new(15) == five.times(3)
  end
end

