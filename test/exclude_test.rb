require 'test_helper'

class ExcludeTest < ActiveSupport::TestCase
  test "return a relation" do
    assert_kind_of ActiveRecord::Relation, User.exclude('email')
  end
  
  test "exclude a column" do
    user = User.first
    assert user.attributes.keys.include?('email')
    
    user = User.exclude('email').first
    assert !user.attributes.keys.include?('email'), user.inspect
  end
  
  test "exclude several columns" do
    user = User.first
    assert user.attributes.keys.include?('email')
    assert user.attributes.keys.include?('born_on')
    
    user = User.exclude('email', 'born_on').first
    assert !user.attributes.keys.include?('email'), user.inspect
    assert !user.attributes.keys.include?('born_on'), user.inspect
  end
end
