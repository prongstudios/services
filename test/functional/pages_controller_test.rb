require 'test_helper'

class PagesControllerTest < ActionController::TestCase
  test "should get drm" do
    get :drm
    assert_response :success
  end

end
