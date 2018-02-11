require 'test_helper'

class MapControllerTest < ActionDispatch::IntegrationTest
  test "should get countries" do
    get map_countries_url
    assert_response :success
  end

end
