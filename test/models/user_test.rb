require 'test_helper'

class UserTest < ActiveSupport::TestCase
  
  test "user is not valid without a unique name" do
    user = User.new(email: users(:ronaldo).email, password: 'Pa$$w0rd')
    assert user.invalid?
    assert user.errors[:email].any?
  end
  
end
