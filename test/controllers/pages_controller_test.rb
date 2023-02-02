require "test_helper"

class PagesControllerTest < ActionDispatch::IntegrationTest
  test "should get dashborad" do
    get pages_dashborad_url
    assert_response :success
  end
end
