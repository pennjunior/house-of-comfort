require "test_helper"

class MenuitemsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get menuitems_index_url
    assert_response :success
  end

  test "should get show" do
    get menuitems_show_url
    assert_response :success
  end
end
