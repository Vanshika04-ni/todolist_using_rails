require "test_helper"

class TodoControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get todo_home_url
    assert_response :success
  end
end
