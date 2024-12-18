# test_sample.rb
require 'test/unit'

class Money
  attr_reader :amount
  def initialize(amount=nil, currency=nil)
    @amount = amount
    @currency = currency
  end
  def ==(object) #equals(object)
    return @amount ==  object.amount &&
           #           self.class == object.class
           self.currency == object.currency
  end
  def dollar(amount)
    Dollar.new(amount, "USD")
  end
  def franc(amount)
    Franc.new(amount, "CHF")
  end
  def currency = @currency
end
class Dollar < Money
  def times(multiplier)
    Money.new(@amount * multiplier, currency)
  end
end

class Franc < Money
  def times(multiplier)
    Money.new(@amount * multiplier, currency)
  end
end

class TestDollar < Test::Unit::TestCase
  def test_currency
    assert_equal "USD", Money.new.dollar(1).currency
    assert_equal "CHF", Money.new.franc(1).currency
  end
  def test_Franc_multiplication
    five = Money.new.franc(5)
    p Money.new.franc(10)
    p five.times(2)
    assert_true Money.new.franc(10) == five.times(2)
    assert_true Money.new.franc(15) == five.times(3)
  end

  def test_equality
    assert_true Money.new.dollar(5) == Money.new.dollar(5)
    assert_false Money.new.dollar(5) == Money.new.dollar(6)
    assert_true Money.new.franc(5) == Money.new.franc(5)
    assert_false Money.new.franc(5) == Money.new.franc(6)
    assert_false Money.new.franc(5) == Money.new.dollar(5)
  end

  def test_multiplication
    five = Money.new.dollar(5) # <= Dollar.new(5)
    assert_true Money.new.dollar(10) == five.times(2)
    assert_true Money.new.dollar(15) == five.times(3)
  end
end
