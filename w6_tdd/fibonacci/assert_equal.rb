require 'colorize'
def puts_inputs(expected, result)
  puts "expeced: "+expected.to_s.blue
  puts "result : "+result.to_s.blue
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

if $PROGRAM_NAME == __FILE__
  assert_equal(1,1)
  assert_not_equal(1,2)
end
