require 'test_helper'

class CountryTest < ActiveSupport::TestCase
  test "Should know its name" do
    # country = Country.make name: "Tanzania"
    country = create :country, name: "Tanzania"
    assert_equal "Tanzania", country.name
  end

  test "Should know its population" do
    country = Country.make population: 112211
    assert_equal 112211, country.population
  end

  test "should invoke the factory_bot callback" do
    country = create :country, name: "ABC"
    assert_equal "Tanzania", country.name    
  end
end
