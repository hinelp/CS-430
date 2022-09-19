def assert_equal(expected, actual, message)
  if expected != actual
    STDERR.puts message
    STDERR.puts "  Expected: #{expected}"
    STDERR.puts "    Actual: #{actual}"
    STDERR.puts
  end
end

class MathTester
  def test_round
    assert_equal(6, 5.6.round, "I tried rounding 5.6, and it failed.")
  end

  def helper
    raise 'You shouldn\'t see this message because this method should not be automatically called by the test runner.'
  end

  # ...
end