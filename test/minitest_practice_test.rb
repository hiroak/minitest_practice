require 'test_helper'

class MinitestPracticeTest < Minitest::Test
  def setup
	@main = ::MinitestPractice::Main.new
  end

  def test_that_it_has_a_version_number
    refute_nil ::MinitestPractice::VERSION
  end

  def test_odd?
    assert @main.odd?(-1001), '-1001 is odd'
    refute @main.odd?(-1000), '-1000 is not odd'
    refute @main.odd?(0), '0 is not odd'
    assert @main.odd?(3), '3 is odd'
    refute @main.odd?(4), '4 is not odd'
    refute @main.odd?(1000), '1000 is not odd'
    assert @main.odd?(1001), '1001 is odd'
  end

  def test_check_number?
    assert @main.check_number?(2222), '2222 is true'
    refute @main.check_number?(2223), '2223 is false'
    refute @main.check_number?(222), '222 is false'
    refute @main.check_number?(0222), '0222 is false'
    refute @main.check_number?(22222), '22222 is false'
  end

  def test_enough_length?
    refute @main.enough_length?("aa"), 'aa is false'
    assert @main.enough_length?("aaa"), 'aaa is true'
    assert @main.enough_length?("aaaaaaaa"), 'aaaa,aaaa is true'
    refute @main.enough_length?("aaaaaaaaa"), 'a,aaaa,aaaa is false'
  end

  def test_divide
    assert_equal 2, @main.divide(10, 5), nil
    assert_equal 'error', @main.divide(5, 0), nil
    assert_equal 0, @main.divide(0, 5), nil
  end

  def test_fizz_buzz
    assert_equal 'Fizz', @main.fizz_buzz(3), nil
    assert_equal 'Buzz', @main.fizz_buzz(5), nil
    assert_equal 'FizzBuzz', @main.fizz_buzz(15), nil
    assert_equal nil, @main.fizz_buzz(2), nil
  end 

  def test_hello
   out, err= capture_io do
	puts "Hello"
  end    
     assert_match @main.hello, out  
   end
end
