require 'test_helper'

class GameControllerTest < ActionDispatch::IntegrationTest
  test "should get ping" do
    get game_ping_url
    assert_response :success
  end

  test "should get pong" do
    get game_pong_url
    assert_response :success
  end

end
