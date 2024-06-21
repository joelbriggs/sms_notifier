require "test_helper"

class SmsNotifierControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get sms_notifier_index_url
    assert_response :success
  end
end
