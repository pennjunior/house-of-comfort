require "test_helper"

class PagesControllerTest < ActionDispatch::IntegrationTest
  test "should get gallery" do
    get pages_gallery_url
    assert_response :success
  end
end
