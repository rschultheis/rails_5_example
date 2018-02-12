require 'test_helper'

class CitizenTest < ActiveSupport::TestCase
  test "can be saved and has proper attributes" do
    citizen = create :citizen
    assert_includes 0..150, citizen.age
    assert_instance_of Country, citizen.country
    assert_match /\w/, citizen.name
  end
  
  test "age must be positive" do
    citizen = build :citizen, age: -1
    refute citizen.valid?
    assert_equal({:age=>["must be greater than or equal to 0"]},
                 citizen.errors.messages)
  end
end
