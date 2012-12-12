require 'test_helper'

class LoginControllerTest < ActionController::TestCase
  test "should get logon" do
    get :logon
    assert_response :success
  end

end
