# frozen_string_literal: true
require 'test/unit'

class Pair
  def initialize(from, to)
    @from = from
    @to = to
  end
  def equals(object)
    pair = Pair.new(object)
    return from.equals(pair.from) && to.equals(pair.to)
  end
  def hashcode()
    return 0
  end
end
class Sum
  attr_reader :augend, :addend
  def initialize(augend, addend)
    @augend = augend
    @addend = addend
  end
  def reduce(bank, to)
    amount = @augend.reduce(bank, to).amount +
             @addend.reduce(bank, to).amount
    return Money.new(amount, to)
  end
end
module Expression
  # Ruby implementation of Java's interface, but ...
end
class Bank
  def initialize
    @rates = {}
  end

  # include Expression
  def add_rate(from, to, rate)
    @rates[Pair.new(from, to).hashcode] = rate
  end
  def reduce(source, to)
    return source.reduce(self, to) #Money.new(10).dollar
  end
  def rate(from, to)
    return 1 if from == to
    return @rates[Pair.new(from, to).hashcode]
  end
end
class Money
  public attr_reader :amount
  public attr_reader :currency
  
  def initialize(amount, currency=nil)
    @amount = amount
    @currency = currency
  end
  def reduce(bank, to)
    rate = bank.rate(@currency, to)
    return Money.new(@amount/rate, to) #self
  end

  def +(addend) = Sum.new(self, addend)
  
  def ==(object)
    money = object
    return @amount == money.amount &&
           self.currency == money.currency
  end
  
  def dollar = Money.new(@amount, 'USD')
  def franc = Money.new(@amount, 'CHF')
  
  def times(multiplier)
    return Money.new(@amount * multiplier, @currency)
  end
end


class TddExample4Test < Test::Unit::TestCase
  test "mixed addition" do
    five_bucks = Money.new(5).dollar
    ten_franc = Money.new(10).franc
    bank = Bank.new()
    bank.add_rate('CHF', 'USD', 2)
    result = bank.reduce(five_bucks + ten_franc, 'USD')
    assert_equal(Money.new(10).dollar, result)
  end
  test "identity rate" do
    assert_equal(1, Bank.new.rate('USD', 'USD'))
  end
  test "plus returns sum" do
    five = Money.new(5).dollar
    sum = five + five # expression
    assert_equal(five, sum.augend)
    assert_equal(five, sum.addend)
  end

  test "reduce money different currency" do
    bank = Bank.new()
    bank.add_rate('CHF', 'USD', 2)
    result = bank.reduce(Money.new(2).franc, 'USD')
    assert_equal(Money.new(1).dollar, result)
  end

  test "bank returns reduce sum" do
    three_usd = Money.new(3).dollar
    four_usd = Money.new(4).dollar
    sum = Sum.new(three_usd, four_usd) # expression
    bank = Bank.new()
    result = bank.reduce(sum, 'USD')
    assert_equal(Money.new(7).dollar, result)
  end

  test "reduce money" do
    bank = Bank.new()
    result = bank.reduce(Money.new(1).dollar, 'USD')
    assert_equal(Money.new(1).dollar, result)
  end

  test "simple addition" do
    five = Money.new(5).dollar
    sum = five + five # expression
    bank = Bank.new
    reduced = bank.reduce(sum, 'USD')
    assert_equal(Money.new(10).dollar, reduced)
#    assert_equal(Money.new(10).dollar, sum)
  end

  test "currency" do
    assert_equal 'USD',  Money.new(1).dollar.currency
    assert_equal 'CHF',  Money.new(1).franc.currency
  end

  test "equality" do
    assert_true  Money.new(5).dollar == Money.new(5).dollar
    assert_false Money.new(5).dollar == Money.new(6).dollar
    assert_true  Money.new(5).franc == Money.new(5).franc
    assert_false Money.new(5).franc == Money.new(6).franc
    assert_false Money.new(5).franc == Money.new(5).dollar
  end


  test "multiplication" do
    five = Money.new(5).dollar
    assert_true Money.new(10).dollar == five.times(2)
    assert_true Money.new(15).dollar == five.times(3)
  end

  test "Franc multiplication" do
    five = Money.new(5).franc
    assert_true Money.new(10).franc == five.times(2)
    assert_true Money.new(15).franc == five.times(3)
  end
end
