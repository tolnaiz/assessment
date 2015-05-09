require 'test_helper'

class NumeralsControllerTest < ActionController::TestCase
    test "should get index" do
      get :index
      assert_response :success
    end

    test "post index" do
      post :index
      assert_response :success
    end
end
