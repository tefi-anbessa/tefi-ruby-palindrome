require "test_helper"

class Tefi::PalindromeTest < Minitest::Test
  def test_that_it_has_a_version_number
    refute_nil ::Tefi::Palindrome::VERSION
  end

  def test_non_palindrome
    refute "Not a palindrome".palindrome?
  end

  def test_literal_palindrome
    assert "kayak".palindrome?
  end

  def test_mixed_case_palindrome
    assert "RaceCar".palindrome?
  end

  def test2_mixed_case_palindrome
    assert "Able I was ere I saw Elba".palindrome?
  end

  def test_palindrome_with_punctuation
    assert "Madam, I'm Adam.".palindrome?
  end
end
