require 'test_helper'

class TraineesControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get trainees_new_url
    assert_response :success
  end

end
