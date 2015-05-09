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
      post :index, numeral: 7
      assert_response :success
      assert_not_nil assigns(:humanized)
      assert_not_nil assigns(:numeral)
      assert_equal "7", assigns(:numeral)
      assert_equal "seven", assigns(:humanized)
    end

    # given test numbers
    test "post index with 42" do
      post :index, numeral: 42
      assert_equal "forty-two", assigns(:humanized)
    end

    test "post index with 2001" do
      post :index, numeral: 2001
      assert_equal "two thousand and one", assigns(:humanized)
    end

    # the description says "nineteen hundred and ninety-nine", but one thousand is also a 
    # valid pronunciation
    test "post index with 1999" do
      post :index, numeral: 1999
      assert_equal "one thousand, nine hundred and ninety-nine", assigns(:humanized)
    end
end
