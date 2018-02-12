require 'test_helper'

class CountryTest < ActiveSupport::TestCase
  test "Should know its name" do
    # country = Country.make name: "Tanzania"
    country = create :country, name: "Tanzania"
    assert_match "Tanzania", country.name
  end

  test "Should know its population" do
    country = Country.make population: 112211
    assert_equal 112211, country.population
  end

  test "should have citizens" do
    country = create :country_with_citizens
    assert_instance_of Citizen, country.citizens.sample
    assert_equal country,
                 country.citizens.sample.country
  end
end
