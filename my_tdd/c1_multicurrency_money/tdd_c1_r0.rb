require 'test/unit'

class Sample
  def greeting
    "Hello."
  end
end

class TestSample < Test::Unit::TestCase
  def test_greeting
    assert_equal "Hello.", Sample.new.greeting
  end
end
