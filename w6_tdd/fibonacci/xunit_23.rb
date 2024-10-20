# from KentBeck? see ../../references/tdd/tdd_xunit/

require 'colorize'
def puts_inputs(expected, result)
  puts "expeced:"+expected.to_s.blue
  puts "result :"+result.to_s.blue
end

def assert_not_equal(expected, result)
  puts_inputs(expected, result)
  if result != expected
    print "succeeded in assert_not_equal #{result.to_s} should not be expected.\n".green
  else
    print "failed in assert_not_equal #{result.to_s} should not be expected.\n".red
  end
end
def assert_equal(expected, result)
  puts_inputs(expected, result)
  if result == expected
    print "succeeded in assert_equal #{result.to_s} should be expected.\n".green
  else
    print "failed in assert_equal #{result.to_s} should be expected.\n".red
  end
end

class TestCase
  def initialize(name)
    p @name = name
  end
  def set_up
  end
  def tear_down
  end
  def run(result)
    result.test_started
    set_up
    begin
      method = method(@name.to_sym)
      method.call
    rescue
      result.test_failed
    end
    tear_down
    #    return TestResult.new
  end
end

class WasRun < TestCase
  attr_reader :log
  def set_up
    @log = "set_up "
  end
  def test_method
    @log << "test_method "
  end
  def tear_down
    @log << "tear_down "
  end
end

class TestResult
  def initialize
    @run_count = 0
    @error_count = 0
  end
  def test_started
    @run_count += 1
  end
  def test_failed
    puts "test failed".red
    @error_count += 1
  end
  def summary
    return sprintf("%d run, %d failed", @run_count, @error_count)
  end
end

class TestSuite
  def initialize
    @tests = []
  end
  def add(test)
    @tests << test
  end
  def run(result)
    @tests.each do |test|
      test.run(result)
    end
  end
end

class TestCaseTest < TestCase
  def set_up
    @result = TestResult.new
  end
  def test_template_method
    @test = WasRun.new("test_method")
    @test.run(@result)
    assert_equal("set_up test_method tear_down ", @test.log)
  end
end

if $PROGRAM_NAME == __FILE__
  suite = TestSuite.new
  suite.add(TestCaseTest.new("test_template_method"))
  result = TestResult.new
  suite.run(result)
  puts result.summary.green
end
