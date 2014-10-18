require 'minitest/autorun'

require_relative 'solution'

class SolutionTest < Minitest::Unit::TestCase
  def test_histogram
    assert_equal histogram('abraca'), 'a' => 3, 'b' => 1, 'r' => 1, 'c' => 1
  end

  def test_prime
    assert prime?(7), true
  end

  def test_ordinal
    assert_equal ordinal(112), '112th'
  end

  def test_palindrome
    assert_equal palindrome?(123_21), true
  end

  def test_anagram?
    assert_equal anagram?('silent', 'listen'), true
  end

  def test_remove_prefix
    assert_equal remove_prefix('Ladies Night Out', 'Ladies'), ' Night Out'
  end

  def test_remove_suffix
    assert_equal remove_suffix('Ladies Night Out', ' Night Out'), 'Ladies'
  end

  def test_remove_digits
    assert_equal digits(123_45), [1, 2, 3, 4, 5]
  end

  def test_remove_digits
    assert_equal fizzbuzz(1..7), [1, 2, :fizz, 4, :buzz, :fizz, 7]
  end

  def test_count
    assert_equal count(%w(this is an array of words words words)), 'this' => 1, 'is' => 1, 'an' => 1, 'array' => 1, 'of' => 1, 'words' => 3
  end

  def test_count_words
    assert_equal count_words('This is a sentence, bro.', 'Bro, this is it.'), 'this' => 2, 'is' => 2, 'a' => 1, 'bro' => 2, 'it' => 1, 'sentence' => 1
  end
end
