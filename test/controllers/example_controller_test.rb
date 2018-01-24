require 'test_helper'

class ExampleControllerTest < ActionDispatch::IntegrationTest
  test "should get test" do
    get example_test_url
    assert_response :success
  end

  test "should have the date" do
    now_time = Time.now.to_s
    get example_test_url
    assert_includes @response.body, now_time
  end

end
