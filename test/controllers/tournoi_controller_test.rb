require 'test_helper'

class TournoiControllerTest < ActionController::TestCase
  test "should get create_view" do
    get :create_view
    assert_response :success
  end

  test "should get create" do
    get :create
    assert_response :success
  end

  test "should get list" do
    get :list
    assert_response :success
  end

  test "should get info" do
    get :info
    assert_response :success
  end

  test "should get update_view" do
    get :update_view
    assert_response :success
  end

  test "should get update" do
    get :update
    assert_response :success
  end

end
