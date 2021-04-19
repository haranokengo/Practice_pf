require 'test_helper'

class BaliablecostControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get baliablecost_index_url
    assert_response :success
  end

  test "should get show" do
    get baliablecost_show_url
    assert_response :success
  end

  test "should get new" do
    get baliablecost_new_url
    assert_response :success
  end

  test "should get edit" do
    get baliablecost_edit_url
    assert_response :success
  end

  test "should get create" do
    get baliablecost_create_url
    assert_response :success
  end

  test "should get update" do
    get baliablecost_update_url
    assert_response :success
  end

  test "should get destroy" do
    get baliablecost_destroy_url
    assert_response :success
  end

end
