require 'test_helper'

class FixedcostsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get fixedcosts_index_url
    assert_response :success
  end

  test "should get show" do
    get fixedcosts_show_url
    assert_response :success
  end

  test "should get new" do
    get fixedcosts_new_url
    assert_response :success
  end

  test "should get edit" do
    get fixedcosts_edit_url
    assert_response :success
  end

  test "should get create" do
    get fixedcosts_create_url
    assert_response :success
  end

  test "should get update" do
    get fixedcosts_update_url
    assert_response :success
  end

  test "should get destroy" do
    get fixedcosts_destroy_url
    assert_response :success
  end

end
