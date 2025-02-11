# test_sample.rb
require 'test/unit'

class Bank
  def reduce(source, to)
    Money.new.dollar(10)
  end
end

module Expression
  def plus(addend)
    Money.new(@amount + addend.amount, @currency)
  end
end

class Sum
  include Expression
  attr_reader :augend, :addend
  def initialize(augend, addend)
    @augend = augend
    @addend = addend
  end
end

class Money
  include Expression
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
    Money.new(amount, "USD")
  end
  def franc(amount)
    Money.new(amount, "CHF")
  end
  def currency = @currency
  def times(multiplier)
    Money.new(@amount * multiplier, @currency)
  end
end

class TestDollar < Test::Unit::TestCase
  test "plus returns sum" do
    five = Money.new.dollar(5)
    results = five.plus(five)
    sum = Sum.new(results)
    assert_equal(five, sum.augend)
    assert_equal(five, sum.addend)
  end
  def test_simple_addition
    five = Money.new.dollar(5)
    sum = five.plus(five)
    bank = Bank.new
    reduced = bank.reduce(sum, "USD")
    assert_true Money.new.dollar(10) == reduced
  end
  def test_currency
    assert_equal "USD", Money.new.dollar(1).currency
    assert_equal "CHF", Money.new.franc(1).currency
  end
  def test_Franc_multiplication
    five = Money.new.franc(5)
    assert_true Money.new.franc(10) == five.times(2)
    assert_true Money.new.franc(15) == five.times(3)
  end

  def test_equality
    assert_true Money.new.dollar(5) == Money.new.dollar(5)
    assert_false Money.new.dollar(5) == Money.new.dollar(6)
    assert_false Money.new.franc(5) == Money.new.dollar(5)
  end

  def test_multiplication
    five = Money.new.dollar(5) # <= Dollar.new(5)
    assert_true Money.new.dollar(10) == five.times(2)
    assert_true Money.new.dollar(15) == five.times(3)
  end
end

