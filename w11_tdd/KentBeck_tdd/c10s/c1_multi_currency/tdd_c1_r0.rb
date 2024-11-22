# test_sample.rb
require 'test/unit'

class TestDollar < Test::Unit::TestCase
  def test_multiplication
    five = Dollar.new(5)
    assert_equal(5, five.amount)
  end
end

