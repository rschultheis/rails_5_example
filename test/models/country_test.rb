require 'test_helper'

class CountryTest < ActiveSupport::TestCase
  test "Should know its name" do
    country = countries(:basic)
    assert_equal "Tanzania", country.name
  end

  test "Should know its population" do
    country = countries(:basic)
    assert_equal 123456789, country.population
  end
end
