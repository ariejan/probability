require 'test/unit'
require 'probability'

class IntegerExtTest < Test::Unit::TestCase
  def test_probability_in
    # Always true
    assert 1.in(1), "Expected a 1 in 1 chance to always be true"

    # No chance, always false
    assert_equal false, 0.in(1), "Expected a 0 in 1 chance to be always false"

    # Chance in 0
    assert_equal false, 2.in(0), "Expected 2 in 0 chances to be false"

    # Yield block
    expected = false
    1.in(1) do
      expected = :called
    end
    assert_equal :called,  expected

    # No yield block
    expected = false
    0.in(1) do
      expected = :called
    end
    assert_equal false,  expected
  end
end
