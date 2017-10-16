require 'test_helper'

class ReportsControllerTest < ActionDispatch::IntegrationTest
  test "should get main" do
    get reports_main_url
    assert_response :success
  end

end
