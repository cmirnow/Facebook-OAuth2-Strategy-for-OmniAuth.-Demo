require "test_helper"

class DemopageControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get demopage_index_url
    assert_response :success
  end
end
