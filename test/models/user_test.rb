require 'test_helper'

class UserTest < ActiveSupport::TestCase
  test "#full_name should return capitalized first and last name" do
  	zuz = User.new(first_name: "zuz", last_name: "zuber")
  	assert_equal "Zuz Zuber", zuz.full_name
  end

  test "#full_name should not fail with last_name only" do
  	zuz = User.new(last_name: "zuber")
  	assert_equal "Zuber", zuz.full_name
  end
end
