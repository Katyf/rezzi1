require 'test_helper'

class VideoControllerTest < ActionController::TestCase
  test "should get name:string" do
    get :name:string
    assert_response :success
  end

  test "should get link:string" do
    get :link:string
    assert_response :success
  end

  test "should get final:boolean" do
    get :final:boolean
    assert_response :success
  end

  test "should get user:belongs_to" do
    get :user:belongs_to
    assert_response :success
  end

end
