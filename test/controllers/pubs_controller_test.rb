require "test_helper"

class PubsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get pubs_index_url
    assert_response :success
  end
end
