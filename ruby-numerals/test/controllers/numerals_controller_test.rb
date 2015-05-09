require 'test_helper'

class NumeralsControllerTest < ActionController::TestCase
    test "should get index" do
      get :index
      assert_response :success
    end

    test "post index with empty value" do
      post :index
      assert_response :success
      assert_not_nil assigns(:humanized)
    end

    test "post index with parameter" do
      post :index, numeral: 5
      assert_response :success
      assert_not_nil assigns(:humanized)
      assert_not_nil assigns(:numeral)
      assert_equal "5", assigns(:numeral)
      assert_equal "five", assigns(:humanized)
    end
end
