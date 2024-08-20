require "test_helper"

class ApiLogsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @api_log = api_logs(:one)
  end

  test "should get index" do
    get api_logs_url
    assert_response :success
  end

  test "should get new" do
    get new_api_log_url
    assert_response :success
  end

  test "should create api_log" do
    assert_difference("ApiLog.count") do
      post api_logs_url, params: { api_log: { api_key_id: @api_log.api_key_id, request_details: @api_log.request_details, response_time: @api_log.response_time, timestamp: @api_log.timestamp } }
    end

    assert_redirected_to api_log_url(ApiLog.last)
  end

  test "should show api_log" do
    get api_log_url(@api_log)
    assert_response :success
  end

  test "should get edit" do
    get edit_api_log_url(@api_log)
    assert_response :success
  end

  test "should update api_log" do
    patch api_log_url(@api_log), params: { api_log: { api_key_id: @api_log.api_key_id, request_details: @api_log.request_details, response_time: @api_log.response_time, timestamp: @api_log.timestamp } }
    assert_redirected_to api_log_url(@api_log)
  end

  test "should destroy api_log" do
    assert_difference("ApiLog.count", -1) do
      delete api_log_url(@api_log)
    end

    assert_redirected_to api_logs_url
  end
end
