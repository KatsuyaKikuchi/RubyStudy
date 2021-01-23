require 'minitest/autorun'
require './chapter_2/fizz_buzz'

class SampleTest < Minitest::Test
  def test_sample
    assert_equal fizz_buzz(1), '1'
    assert_equal fizz_buzz(2), '2'
    assert_equal fizz_buzz(3), 'Fizz'
    assert_equal fizz_buzz(4), '4'
    assert_equal fizz_buzz(5), 'Buzz'
    assert_equal fizz_buzz(15), 'Fizz Buzz'
  end
end
