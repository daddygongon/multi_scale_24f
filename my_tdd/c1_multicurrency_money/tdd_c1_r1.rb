require 'test/unit'

class TestSample < Test::Unit::TestCase
  def test_multiplication
    five = Dollar(5).new
    five.times(2)
    assert_equal 10, five.amount
  end
end
