require "test_helper"

class RandomTestHelpersHelperTest < ActionView::TestCase

  test "should render stars correctly" do
    assert_equal "*", render_stars(1)
    assert_equal "", render_stars(0)
    assert_equal "", render_stars(-1)
    assert_equal "**********", render_stars(10)
  end

end
