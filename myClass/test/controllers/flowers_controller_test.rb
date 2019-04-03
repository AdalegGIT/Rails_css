require 'test_helper'

class FlowersControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get flowers_index_url
    assert_response :success
  end

  test "should get new" do
    get flowers_new_url
    assert_response :success
  end

  test "should get create" do
    get flowers_create_url
    assert_response :success
  end

  test "should get edit" do
    get flowers_edit_url
    assert_response :success
  end

  test "should get show" do
    get flowers_show_url
    assert_response :success
  end

  test "should get destroy" do
    get flowers_destroy_url
    assert_response :success
  end

  test "should get update" do
    get flowers_update_url
    assert_response :success
  end

end
