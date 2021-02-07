require 'minitest/autorun'
require './chapter_8/bank'
require './chapter_8/team'

class DeepFreezableTest < Minitest::Test
  def test_deep_freeze_to_array
    assert_equal ['Japan', 'US', 'India'], Team::COUNTRIES
    assert Team::COUNTRIES.frozen?
    assert Team::COUNTRIES.all? { |c| c.frozen? }
  end

  def test_deep_freeze_to_hash
    assert_equal(Bank::CURRENCIES, { Japan: 'yen', US: 'dollar', India: 'rupee' })
    assert Bank::CURRENCIES.frozen?
    assert Bank::CURRENCIES.all? { |key, value| key.frozen? && value.frozen? }
  end
end