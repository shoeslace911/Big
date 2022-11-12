require "test_helper"

class SpiesControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get spies_new_url
    assert_response :success
  end
end
