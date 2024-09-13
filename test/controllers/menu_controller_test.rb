require "test_helper"

class MenuControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get menu_index_url
    assert_response :success
  end

  test "should get show" do
    get menu_show_url
    assert_response :success
  end

  test "should get category" do
    get menu_category_url
    assert_response :success
  end

  test "should get edit" do
    get menu_edit_url
    assert_response :success
  end

  test "should get update" do
    get menu_update_url
    assert_response :success
  end

  test "should get delete" do
    get menu_delete_url
    assert_response :success
  end
end
