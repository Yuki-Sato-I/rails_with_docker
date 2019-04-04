require 'test_helper'

class WelcomesControllerTest < ActionDispatch::IntegrationTest
  test "should get indef" do
    get welcomes_indef_url
    assert_response :success
  end

end
