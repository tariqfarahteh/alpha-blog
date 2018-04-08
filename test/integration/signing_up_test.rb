require 'test_helper'


class SigningUpTest < ActionDispatch::IntegrationTest
  
  test "signup for a user" do
    get signup_path
    assert_template 'users/new'
    
    assert_difference 'User.count', 1 do
      post_via_redirect users_path, user: {username: "test", email: "t@t.com", password: "123"}
    end
     assert_template 'users/show'
    
  end
  
end