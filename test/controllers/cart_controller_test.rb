require 'test_helper'

class CartControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get clear" do
    get :clear
    assert_response :success
  end

  test "should get delete" do
    get :delete
    assert_response :success
  end

end
